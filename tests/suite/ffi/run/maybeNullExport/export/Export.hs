{-# LANGUAGE ForeignFunctionInterface #-}
module Export where

import Java

data Hello = Hello @test.Hello
  deriving Class

foreign export java "hello" hello :: JInteger -> Java Hello  JInteger
foreign export java "helloNullableJ" helloNullableJ :: JInteger -> Java Hello (Maybe JInteger)
foreign export java "helloNullable" helloNullable :: JInteger -> Java Hello (Maybe Int )


hello :: JInteger -> Java Hello JInteger
hello xj = io $ return $  toJava (3 :: Int)


helloNullableJ :: JInteger -> Java Hello ( Maybe JInteger )
helloNullableJ xj
      | x == 1  = return Nothing
      | otherwise  = io $ return $ Just $  toJava (4 :: Int)
      where x = fromJava xj :: Int


helloNullable :: JInteger -> Java Hello (Maybe Int)
helloNullable xj
      | x == 1  = return Nothing
      | otherwise  = io $ return $ Just $  5
      where x = fromJava xj :: Int


