defmodule Inmana.WelcomerTest do
  use ExUnit.Case, async: true

  alias Inmana.Welcomer

  describe "welcome/1" do
    test "when user is special, returns a special message" do
      params = %{"name" => "banana", "age" => "42"}

      result = Welcomer.welcome(params)

      expected_result = {:ok, "You are very special, banana"}

      assert result === expected_result
    end

    test "when user is not special, returns a welcome message" do
      params = %{"name" => "Alex", "age" => "23"}

      result = Welcomer.welcome(params)

      expected_result = {:ok, "Welcome, alex"}

      assert result === expected_result
    end

    test "when user is under age, returns an error" do
      params = %{"name" => "alex", "age" => "17"}

      result = Welcomer.welcome(params)

      expected_result = {:error, "You shall not pass, alex"}

      assert result === expected_result
    end
  end
end
