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

  def strbytes() do
    C.pwhash_argon2i_STRBYTES()
  end

  def opslimit_min() do
    C.pwhash_argon2i_OPSLIMIT_MIN()
  end

  def opslimit_max() do
    C.pwhash_argon2i_OPSLIMIT_MAX()
  end

  def memlimit_min() do
    C.pwhash_argon2i_MEMLIMIT_MIN()
  end

  def memlimit_max() do
    C.pwhash_argon2i_MEMLIMIT_MAX()
  end

  def opslimit_interactive() do
    C.pwhash_argon2i_OPSLIMIT_INTERACTIVE()
  end

  def memlimit_interactive() do
    C.pwhash_argon2i_MEMLIMIT_INTERACTIVE()
  end

  def opslimit_moderate() do
    C.pwhash_argon2i_OPSLIMIT_MODERATE()
  end

  def memlimit_moderate() do
    C.pwhash_argon2i_MEMLIMIT_MODERATE()
  end

  def opslimit_sensitive() do
    C.pwhash_argon2i_OPSLIMIT_SENSITIVE()
  end

  def memlimit_sensitive() do
    C.pwhash_argon2i_MEMLIMIT_SENSITIVE()
  end

  def pwhash(outlen, password, salt, opslimit, memlimit, alg) do
    C.pwhash_argon2i(outlen, password, salt, opslimit, memlimit, alg())
  end
end
