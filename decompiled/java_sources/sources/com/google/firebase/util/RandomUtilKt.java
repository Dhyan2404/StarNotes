package com.google.firebase.util;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt___StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\u001a\u0012\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\"\u001a\u0010\t\u001a\u00020\u00038\u0002X\u0082T¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u0012\u0004\b\u0007\u0010\b¨\u0006\n"}, m61528d2 = {"Lkotlin/random/Random;", "", "length", "", "nextAlphanumericString", "a", Constants.STRING_SIG, "getALPHANUMERIC_ALPHABET$annotations", "()V", "ALPHANUMERIC_ALPHABET", "com.google.firebase-firebase-common"}, m61529k = 2, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nRandomUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RandomUtil.kt\ncom/google/firebase/util/RandomUtilKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1#2:43\n1549#3:44\n1620#3,3:45\n*S KotlinDebug\n*F\n+ 1 RandomUtil.kt\ncom/google/firebase/util/RandomUtilKt\n*L\n34#1:44\n34#1:45,3\n*E\n"})
/* loaded from: classes6.dex */
public final class RandomUtilKt {

    /* renamed from: a */
    @NotNull
    public static final String f36042a = "23456789abcdefghjkmnpqrstvwxyz";

    /* renamed from: a */
    public static /* synthetic */ void m28203a() {
    }

    @NotNull
    public static final String nextAlphanumericString(@NotNull Random random, int i) {
        IntRange until;
        int collectionSizeOrDefault;
        String joinToString$default;
        char random2;
        Intrinsics.checkNotNullParameter(random, "<this>");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("invalid length: " + i).toString());
        }
        until = RangesKt___RangesKt.until(0, i);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(until, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<Integer> it2 = until.iterator();
        while (it2.hasNext()) {
            ((IntIterator) it2).nextInt();
            random2 = StringsKt___StringsKt.random(f36042a, random);
            arrayList.add(Character.valueOf(random2));
        }
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, "", null, null, 0, null, null, 62, null);
        return joinToString$default;
    }
}
