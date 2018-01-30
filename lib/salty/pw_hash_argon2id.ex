defmodule Salty.PwHash.Argon2id do
  use Salty.PwHash

  def alg() do
    C.pwhash_argon2id_ALG_ARGON2ID13()
  end

  def bytes_min() do
    C.pwhash_argon2id_BYTES_MIN()
  end

  def bytes_max() do
    C.pwhash_argon2id_BYTES_MAX()
  end

  def passwd_min() do
    C.pwhash_argon2id_PASSWD_MIN()
  end

  def passwd_max() do
    C.pwhash_argon2id_PASSWD_MAX()
  end

  def saltbytes() do
    C.pwhash_argon2id_SALTBYTES()
  end

  def strbytes() do
    C.pwhash_argon2id_STRBYTES()
  end

  def opslimit_min() do
    C.pwhash_argon2id_OPSLIMIT_MIN()
  end

  def opslimit_max() do
    C.pwhash_argon2id_OPSLIMIT_MAX()
  end

  def memlimit_min() do
    C.pwhash_argon2id_MEMLIMIT_MIN()
  end

  def memlimit_max() do
    C.pwhash_argon2id_MEMLIMIT_MAX()
  end

  def opslimit_interactive() do
    C.pwhash_argon2id_OPSLIMIT_INTERACTIVE()
  end

  def memlimit_interactive() do
    C.pwhash_argon2id_MEMLIMIT_INTERACTIVE()
  end

  def opslimit_moderate() do
    C.pwhash_argon2id_OPSLIMIT_MODERATE()
  end

  def memlimit_moderate() do
    C.pwhash_argon2id_MEMLIMIT_MODERATE()
  end

  def opslimit_sensitive() do
    C.pwhash_argon2id_OPSLIMIT_SENSITIVE()
  end

  def memlimit_sensitive() do
    C.pwhash_argon2id_MEMLIMIT_SENSITIVE()
  end

  def pwhash(outlen, password, salt, opslimit, memlimit, alg \\ alg()) do
    C.pwhash_argon2id(outlen, password, salt, opslimit, memlimit, alg)
  end
end
