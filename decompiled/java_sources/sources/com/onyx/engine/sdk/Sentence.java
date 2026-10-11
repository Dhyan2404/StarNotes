package com.onyx.engine.sdk;

import com.alibaba.fastjson2.TypeReference;
import com.onyx.engine.sdk.Sentence;
import java.util.Collections;
import java.util.List;
import java.util.function.Supplier;

/* loaded from: classes8.dex */
public class Sentence {
    PinPosition end;
    PinPosition start;
    String text;

    public static Sentence fromJson(String str) {
        return (Sentence) JsonUtils.fromJson(str, Sentence.class, new Supplier() { // from class: com.sunia.HTREnginev2.wgm
            @Override // java.util.function.Supplier
            public final Object get() {
                return new Sentence();
            }
        });
    }

    public static List<Sentence> parseList(String str) {
        List<Sentence> list = (List) JsonUtils.fromJson(str, new TypeReference<List<Sentence>>() { // from class: com.onyx.engine.sdk.Sentence.1
        }.getType());
        return list == null ? Collections.emptyList() : list;
    }

    public PinPosition getEnd() {
        return this.end;
    }

    public PinPosition getStart() {
        return this.start;
    }

    public String getText() {
        return this.text;
    }

    public Sentence setEnd(PinPosition pinPosition) {
        this.end = pinPosition;
        return this;
    }

    public Sentence setStart(PinPosition pinPosition) {
        this.start = pinPosition;
        return this;
    }

    public Sentence setText(String str) {
        this.text = str;
        return this;
    }
}
