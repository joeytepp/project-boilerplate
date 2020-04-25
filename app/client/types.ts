export type Maybe<T> = T | null;
/** All built-in and custom scalars, mapped to their actual values */
export type Scalars = {
  ID: string;
  String: string;
  Boolean: boolean;
  Int: number;
  Float: number;
  /** A valid URL, transported as a string. */
  Url: any;
};

export type Mutation = {
   __typename?: 'Mutation';
  /** Creates a new product */
  productCreate?: Maybe<Product>;
  /** Updates a product by name */
  productUpdate?: Maybe<Product>;
};


export type MutationProductCreateArgs = {
  input: ProductCreateInput;
};


export type MutationProductUpdateArgs = {
  input: ProductUpdateInput;
  name: Scalars['String'];
};

export type Product = {
   __typename?: 'Product';
  /** The color of the product. */
  color: ProductColorEnum;
  /** The image source for the product. */
  imgSrc: Scalars['Url'];
  /** The name of the product */
  name: Scalars['String'];
};

export enum ProductColorEnum {
  Blue = 'BLUE',
  Green = 'GREEN',
  Red = 'RED'
}

export type ProductCreateInput = {
  /** The color of the product. */
  color: ProductColorEnum;
  /** The image source of the product. */
  imgSrc: Scalars['Url'];
  /** The name of the product. */
  name: Scalars['String'];
};

export type ProductUpdateInput = {
  /** The color of the product. */
  color?: Maybe<ProductColorEnum>;
  /** The image source of the product. */
  imgSrc?: Maybe<Scalars['Url']>;
  /** The name of the product. */
  name?: Maybe<Scalars['String']>;
};

export type Query = {
   __typename?: 'Query';
  /** Returns a product by name. */
  product?: Maybe<Product>;
  /** Returns all products. */
  products: Array<Product>;
};


export type QueryProductArgs = {
  name: Scalars['String'];
};

