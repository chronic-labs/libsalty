defmodule Salty.PwHash do
  defmacro __using__(opts) do
    quote do
      @behaviour Salty.PwHash
      alias Salty.Nif, as: C
    end
  end

  def primitive do
    Salty.PwHash.Argon2id
  end

  @callback alg() :: non_neg_integer()

  @callback bytes_min() :: non_neg_integer()

  @callback bytes_max() :: non_neg_integer()

  @callback passwd_min() :: non_neg_integer()

  @callback passwd_max() :: non_neg_integer()

  @callback saltbytes() :: non_neg_integer()

  @callback strbytes() :: non_neg_integer()

  @callback strprefix() :: binary()

  @callback opslimit_min() :: non_neg_integer()

  @callback opslimit_max() :: non_neg_integer()

  @callback memlimit_min() :: non_neg_integer()

  @callback memlimit_max() :: non_neg_integer()

  @callback opslimit_interactive() :: non_neg_integer()

  @callback memlimit_interactive() :: non_neg_integer()

  @callback opslimit_moderate() :: non_neg_integer()

  @callback memlimit_moderate() :: non_neg_integer()

  @callback opslimit_sensitive() :: non_neg_integer()

  @callback memlimit_sensitive() :: non_neg_integer()

  @callback pwhash(non_neg_integer(), binary(), binary(), non_neg_integer(), non_neg_integer(),non_neg_integer()) :: {:ok, binary()} | {:error, atom()}

  @callback pwhash_str() :: {:ok, binary()} | {:error, atom()}

  # @callback pwhash_str()

end
