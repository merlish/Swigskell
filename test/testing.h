namespace TestingCpp
{

  class Animal
  {
    public:
      void setName(char* name);
      char* getName();

    protected:
      char* _name;
      Animal(char* name = "unnamed animal");

  };

  class Dog : public Animal
  {
    public:
      void bark();
      Dog();

    private:
      int _hoarseness;
  };

  class Cat : public Animal
  {
    public:
      void meow();
      Cat();
  };

}
