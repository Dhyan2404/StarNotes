package com.onyx.harfbuzz.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.harfbuzz.collections.ByteList;
import com.onyx.harfbuzz.collections.FloatList;
import com.onyx.harfbuzz.collections.IntList;
import com.onyx.harfbuzz.collections.PointList;
import com.onyx.harfbuzz.internal.collections.JByteArrayList;
import java.util.Iterator;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes9.dex */
public class Description {

    /* renamed from: c */
    public static final String f62788c = "null";

    /* renamed from: a */
    @NonNull
    public final StringBuilder f62789a = new StringBuilder();

    /* renamed from: b */
    public boolean f62790b = false;

    @NonNull
    public static String forByteArray(@NonNull byte[] bArr) {
        return forByteList(new JByteArrayList(bArr, 0, bArr.length));
    }

    @NonNull
    public static String forByteList(@Nullable ByteList byteList) {
        if (byteList == null) {
            return "null";
        }
        Description description = new Description();
        description.m52080b();
        int size = byteList.size();
        for (int i = 0; i < size; i++) {
            description.m52079a(String.valueOf((int) byteList.get(i)));
        }
        description.m52081c();
        return description.toString();
    }

    @NonNull
    public static String forFloatList(@Nullable FloatList floatList) {
        if (floatList == null) {
            return "null";
        }
        Description description = new Description();
        description.m52080b();
        int size = floatList.size();
        for (int i = 0; i < size; i++) {
            description.m52079a(String.valueOf(floatList.get(i)));
        }
        description.m52081c();
        return description.toString();
    }

    @NonNull
    public static String forIntList(@Nullable IntList intList) {
        if (intList == null) {
            return "null";
        }
        Description description = new Description();
        description.m52080b();
        int size = intList.size();
        for (int i = 0; i < size; i++) {
            description.m52079a(String.valueOf(intList.get(i)));
        }
        description.m52081c();
        return description.toString();
    }

    @NonNull
    public static <T> String forIterable(@NonNull Iterable<T> iterable) {
        return forIterator(iterable.iterator());
    }

    @NonNull
    public static <T> String forIterator(@Nullable Iterator<T> it2) {
        if (it2 == null) {
            return "null";
        }
        Description description = new Description();
        description.m52080b();
        while (it2.hasNext()) {
            description.m52079a(it2.next().toString());
        }
        description.m52081c();
        return description.toString();
    }

    @NonNull
    public static String forPointList(@Nullable PointList pointList) {
        if (pointList == null) {
            return "null";
        }
        Description description = new Description();
        description.m52080b();
        int size = pointList.size();
        for (int i = 0; i < size; i++) {
            description.m52079a(String.valueOf(pointList.getX(i)));
            description.m52079a(String.valueOf(pointList.getY(i)));
        }
        description.m52081c();
        return description.toString();
    }

    /* renamed from: a */
    public final void m52079a(String str) {
        if (!this.f62790b) {
            this.f62789a.append(", ");
        }
        this.f62789a.append(str);
        this.f62790b = false;
    }

    /* renamed from: b */
    public final void m52080b() {
        this.f62789a.append(IteratorUtils.f104923a);
        this.f62790b = true;
    }

    /* renamed from: c */
    public final void m52081c() {
        this.f62789a.append(IteratorUtils.f104924b);
    }

    public String toString() {
        return this.f62789a.toString();
    }
}
