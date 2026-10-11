package com.google.gson;

import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.internal.NumberLimits;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Objects;

/* loaded from: classes6.dex */
public final class JsonPrimitive extends JsonElement {

    /* renamed from: e */
    public final Object f36112e;

    public JsonPrimitive(Boolean bool) {
        Objects.requireNonNull(bool);
        this.f36112e = bool;
    }

    /* renamed from: a */
    public static boolean m28223a(JsonPrimitive jsonPrimitive) {
        Object obj = jsonPrimitive.f36112e;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    @Override // com.google.gson.JsonElement
    public JsonPrimitive deepCopy() {
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || JsonPrimitive.class != obj.getClass()) {
            return false;
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) obj;
        if (this.f36112e == null) {
            return jsonPrimitive.f36112e == null;
        }
        if (m28223a(this) && m28223a(jsonPrimitive)) {
            return ((this.f36112e instanceof BigInteger) || (jsonPrimitive.f36112e instanceof BigInteger)) ? getAsBigInteger().equals(jsonPrimitive.getAsBigInteger()) : getAsNumber().longValue() == jsonPrimitive.getAsNumber().longValue();
        }
        Object obj2 = this.f36112e;
        if (obj2 instanceof Number) {
            Object obj3 = jsonPrimitive.f36112e;
            if (obj3 instanceof Number) {
                if ((obj2 instanceof BigDecimal) && (obj3 instanceof BigDecimal)) {
                    return getAsBigDecimal().compareTo(jsonPrimitive.getAsBigDecimal()) == 0;
                }
                double asDouble = getAsDouble();
                double asDouble2 = jsonPrimitive.getAsDouble();
                if (asDouble != asDouble2) {
                    return Double.isNaN(asDouble) && Double.isNaN(asDouble2);
                }
                return true;
            }
        }
        return obj2.equals(jsonPrimitive.f36112e);
    }

    @Override // com.google.gson.JsonElement
    public BigDecimal getAsBigDecimal() {
        Object obj = this.f36112e;
        return obj instanceof BigDecimal ? (BigDecimal) obj : NumberLimits.parseBigDecimal(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public BigInteger getAsBigInteger() {
        Object obj = this.f36112e;
        return obj instanceof BigInteger ? (BigInteger) obj : m28223a(this) ? BigInteger.valueOf(getAsNumber().longValue()) : NumberLimits.parseBigInteger(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public boolean getAsBoolean() {
        return isBoolean() ? ((Boolean) this.f36112e).booleanValue() : Boolean.parseBoolean(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public byte getAsByte() {
        return isNumber() ? getAsNumber().byteValue() : Byte.parseByte(getAsString());
    }

    @Override // com.google.gson.JsonElement
    @Deprecated
    public char getAsCharacter() {
        String asString = getAsString();
        if (asString.isEmpty()) {
            throw new UnsupportedOperationException("String value is empty");
        }
        return asString.charAt(0);
    }

    @Override // com.google.gson.JsonElement
    public double getAsDouble() {
        return isNumber() ? getAsNumber().doubleValue() : Double.parseDouble(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public float getAsFloat() {
        return isNumber() ? getAsNumber().floatValue() : Float.parseFloat(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public int getAsInt() {
        return isNumber() ? getAsNumber().intValue() : Integer.parseInt(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public long getAsLong() {
        return isNumber() ? getAsNumber().longValue() : Long.parseLong(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public Number getAsNumber() {
        Object obj = this.f36112e;
        if (obj instanceof Number) {
            return (Number) obj;
        }
        if (obj instanceof String) {
            return new LazilyParsedNumber((String) obj);
        }
        throw new UnsupportedOperationException("Primitive is neither a number nor a string");
    }

    @Override // com.google.gson.JsonElement
    public short getAsShort() {
        return isNumber() ? getAsNumber().shortValue() : Short.parseShort(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public String getAsString() {
        Object obj = this.f36112e;
        if (obj instanceof String) {
            return (String) obj;
        }
        if (isNumber()) {
            return getAsNumber().toString();
        }
        if (isBoolean()) {
            return ((Boolean) this.f36112e).toString();
        }
        throw new AssertionError("Unexpected value type: " + this.f36112e.getClass());
    }

    public int hashCode() {
        long doubleToLongBits;
        if (this.f36112e == null) {
            return 31;
        }
        if (m28223a(this)) {
            doubleToLongBits = getAsNumber().longValue();
        } else {
            Object obj = this.f36112e;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            doubleToLongBits = Double.doubleToLongBits(getAsNumber().doubleValue());
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    public boolean isBoolean() {
        return this.f36112e instanceof Boolean;
    }

    public boolean isNumber() {
        return this.f36112e instanceof Number;
    }

    public boolean isString() {
        return this.f36112e instanceof String;
    }

    public JsonPrimitive(Number number) {
        Objects.requireNonNull(number);
        this.f36112e = number;
    }

    public JsonPrimitive(String str) {
        Objects.requireNonNull(str);
        this.f36112e = str;
    }

    public JsonPrimitive(Character ch) {
        Objects.requireNonNull(ch);
        this.f36112e = ch.toString();
    }
}
