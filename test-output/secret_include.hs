
-- field type 1.
-- syntax looks like 'get name cat1', 'set (name cat1) 
type Field a = (IO a, a -> IO ())

get :: Field a -> IO a
get = fst

set :: Field a -> a -> IO ()
set = snd


-- field type 2

data FieldOp' a = Get | Set a

-- always returns value, even on set ops.
-- this allows chaining and makes type def easier.
someField :: FieldOp' Int -> IO Int
someField Get = error "something here"
someField Set v = error "something something"


--class SwigField a where



--type Method a = Ptr
--call :: Method a -> IO (a)
type NoReturnMethod a = Ptr
type ReturningMethod a b = Ptr

call ::


type Animal = ()

data Cat = Cat {
  animal :: Animal
  ptr :: Ptr
  meow1 :: Method ()
  meow2 :: Method () 
  name :: Field String
  name' :: Field' String
}
 
--createCatObj 
