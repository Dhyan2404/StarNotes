package com.google.gson;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.gson.internal.NonNullElementWrapperList;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
public final class JsonArray extends JsonElement implements Iterable<JsonElement> {

    /* renamed from: e */
    public final ArrayList<JsonElement> f36110e;

    public JsonArray() {
        this.f36110e = new ArrayList<>();
    }

    /* renamed from: a */
    public final JsonElement m28222a() {
        int size = this.f36110e.size();
        if (size == 1) {
            return this.f36110e.get(0);
        }
        throw new IllegalStateException("Array must have size 1, but has size " + size);
    }

    public void add(Boolean bool) {
        this.f36110e.add(bool == null ? JsonNull.INSTANCE : new JsonPrimitive(bool));
    }

    public void addAll(JsonArray jsonArray) {
        this.f36110e.addAll(jsonArray.f36110e);
    }

    public List<JsonElement> asList() {
        return new NonNullElementWrapperList(this.f36110e);
    }

    public boolean contains(JsonElement jsonElement) {
        return this.f36110e.contains(jsonElement);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof JsonArray) && ((JsonArray) obj).f36110e.equals(this.f36110e));
    }

    public JsonElement get(int i) {
        return this.f36110e.get(i);
    }

    @Override // com.google.gson.JsonElement
    public BigDecimal getAsBigDecimal() {
        return m28222a().getAsBigDecimal();
    }

    @Override // com.google.gson.JsonElement
    public BigInteger getAsBigInteger() {
        return m28222a().getAsBigInteger();
    }

    @Override // com.google.gson.JsonElement
    public boolean getAsBoolean() {
        return m28222a().getAsBoolean();
    }

    @Override // com.google.gson.JsonElement
    public byte getAsByte() {
        return m28222a().getAsByte();
    }

    @Override // com.google.gson.JsonElement
    @Deprecated
    public char getAsCharacter() {
        return m28222a().getAsCharacter();
    }

    @Override // com.google.gson.JsonElement
    public double getAsDouble() {
        return m28222a().getAsDouble();
    }

    @Override // com.google.gson.JsonElement
    public float getAsFloat() {
        return m28222a().getAsFloat();
    }

    @Override // com.google.gson.JsonElement
    public int getAsInt() {
        return m28222a().getAsInt();
    }

    @Override // com.google.gson.JsonElement
    public long getAsLong() {
        return m28222a().getAsLong();
    }

    @Override // com.google.gson.JsonElement
    public Number getAsNumber() {
        return m28222a().getAsNumber();
    }

    @Override // com.google.gson.JsonElement
    public short getAsShort() {
        return m28222a().getAsShort();
    }

    @Override // com.google.gson.JsonElement
    public String getAsString() {
        return m28222a().getAsString();
    }

    public int hashCode() {
        return this.f36110e.hashCode();
    }

    public boolean isEmpty() {
        return this.f36110e.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<JsonElement> iterator() {
        return this.f36110e.iterator();
    }

    @CanIgnoreReturnValue
    public boolean remove(JsonElement jsonElement) {
        return this.f36110e.remove(jsonElement);
    }

    @CanIgnoreReturnValue
    public JsonElement set(int i, JsonElement jsonElement) {
        ArrayList<JsonElement> arrayList = this.f36110e;
        if (jsonElement == null) {
            jsonElement = JsonNull.INSTANCE;
        }
        return arrayList.set(i, jsonElement);
    }

    public int size() {
        return this.f36110e.size();
    }

    public void add(Character ch) {
        this.f36110e.add(ch == null ? JsonNull.INSTANCE : new JsonPrimitive(ch));
    }

    @Override // com.google.gson.JsonElement
    public JsonArray deepCopy() {
        if (!this.f36110e.isEmpty()) {
            JsonArray jsonArray = new JsonArray(this.f36110e.size());
            Iterator<JsonElement> it2 = this.f36110e.iterator();
            while (it2.hasNext()) {
                jsonArray.add(it2.next().deepCopy());
            }
            return jsonArray;
        }
        return new JsonArray();
    }

    @CanIgnoreReturnValue
    public JsonElement remove(int i) {
        return this.f36110e.remove(i);
    }

    public JsonArray(int i) {
        this.f36110e = new ArrayList<>(i);
    }

    public void add(Number number) {
        this.f36110e.add(number == null ? JsonNull.INSTANCE : new JsonPrimitive(number));
    }

    public void add(String str) {
        this.f36110e.add(str == null ? JsonNull.INSTANCE : new JsonPrimitive(str));
    }

    public void add(JsonElement jsonElement) {
        if (jsonElement == null) {
            jsonElement = JsonNull.INSTANCE;
        }
        this.f36110e.add(jsonElement);
    }
}
