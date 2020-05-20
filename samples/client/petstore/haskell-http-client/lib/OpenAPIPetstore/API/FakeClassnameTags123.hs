{-
   OpenAPI Petstore

   This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

   OpenAPI Version: 3.0.1
   OpenAPI Petstore API version: 1.0.0
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : OpenAPIPetstore.API.FakeClassnameTags123
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module OpenAPIPetstore.API.FakeClassnameTags123 where

import OpenAPIPetstore.Core
import OpenAPIPetstore.MimeTypes
import OpenAPIPetstore.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** FakeClassnameTags123

-- *** testClassname

-- | @PATCH \/fake_classname_test@
-- 
-- To test class name in snake case
-- 
-- To test class name in snake case
-- 
-- AuthMethod: 'AuthApiKeyApiKeyQuery'
-- 
testClassname 
  :: (Consumes TestClassname MimeJSON, MimeRender MimeJSON BodyClient)
  => BodyClient -- ^ "body" -  client model
  -> OpenAPIPetstoreRequest TestClassname MimeJSON Client MimeJSON
testClassname body =
  _mkRequest "PATCH" ["/fake_classname_test"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKeyQuery)
    `setBodyParam` body

data TestClassname 

-- | /Body Param/ "body" - client model
instance HasBodyParam TestClassname BodyClient 

-- | @application/json@
instance Consumes TestClassname MimeJSON

-- | @application/json@
instance Produces TestClassname MimeJSON

