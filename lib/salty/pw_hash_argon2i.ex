defmodule Salty.PwHashArgon2i do
  use Salty.PwHash

  def alg() do
    C.pwhash_argon2i_ALG_ARGON2I13()
  end

  def bytes_min() do
    C.pwhash_argon2i_BYTES_MIN()
  end

  def bytes_max() do
    C.pwhash_argon2i_BYTES_MAX()
  end

  def passwd_min() do
    C.pwhash_argon2i_PASSWD_MIN()
  end

  def passwd_max() do
    C.pwhash_argon2i_PASSWD_MAX()
  end

  def saltbytes() do
    C.pwhash_argon2i_SALTBYTES()
  end
end
