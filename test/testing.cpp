#include <iostream>

#include "testing.h"

using namespace TestingCpp;

char* Animal::getName() { return this->_name; }

void Animal::setName(char* name) { this->_name = name; }

Animal::Animal(char* n) { this->setName(n); }

Dog::Dog() : Animal::Animal("unnamed dog") { this->_hoarseness = 0; }
Cat::Cat() : Animal::Animal("unnamed cat") {}

void Dog::bark()
{
  this->_hoarseness -= 4;
  if (this->_hoarseness < 0)
    this->_hoarseness = 0;
  
  std::cout << this->_name << ": ";

  for (; this->_hoarseness < 10; this->_hoarseness++) {
    std::cout << "Bark! ";
  }

  std::cout << "\n";
}

void Cat::meow()
{
  std::cout << this->_name << ": meow\n";
}

