package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.room.AmbiguousColumnResolver;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001:\u0003\u0019\u001c\u001dB\t\b\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ7\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0002H\u0007¢\u0006\u0004\b\u0007\u0010\bJQ\u0010\u0011\u001a\u00020\u000f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022$\u0010\u0010\u001a \u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0004\u0012\u00020\u000f0\rH\u0002¢\u0006\u0004\b\u0011\u0010\u0012JV\u0010\u0019\u001a\u00020\u000f\"\u0004\b\u0000\u0010\u00132\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\t0\t2\u000e\b\u0002\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\b\b\u0002\u0010\u0016\u001a\u00020\u000e2\u0018\u0010\u0018\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\t\u0012\u0004\u0012\u00020\u000f0\u0017H\u0002¨\u0006\u001e"}, m61528d2 = {"Landroidx/room/AmbiguousColumnResolver;", "", "", "", "resultColumns", "mappings", "", "resolve", "([Ljava/lang/String;[[Ljava/lang/String;)[[I", "", "Landroidx/room/AmbiguousColumnResolver$b;", "content", "pattern", "Lkotlin/Function3;", "", "", "onHashMatch", "c", "(Ljava/util/List;[Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V", "T", "", Keywords.FUNC_CURRENT_STRING, "depth", "Lkotlin/Function1;", BreakpointSQLiteHelper.f39283i, "a", Constants.CONSTRUCTOR_NAME, "()V", "b", "Solution", "room-common"}, m61529k = 1, m61530mv = {1, 7, 1})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class AmbiguousColumnResolver {

    @NotNull
    public static final AmbiguousColumnResolver INSTANCE = new AmbiguousColumnResolver();

    /* loaded from: classes3.dex */
    public static final class Solution implements Comparable<Solution> {

        /* renamed from: h */
        @NotNull
        public static final Companion f10013h = new Companion(null);

        /* renamed from: i */
        @NotNull
        public static final Solution f10014i;

        /* renamed from: e */
        @NotNull
        public final List<C1387a> f10015e;

        /* renamed from: f */
        public final int f10016f;

        /* renamed from: g */
        public final int f10017g;

        @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002R\u0017\u0010\u0007\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\r"}, m61528d2 = {"Landroidx/room/AmbiguousColumnResolver$Solution$Companion;", "", "", "Landroidx/room/AmbiguousColumnResolver$a;", "matches", "Landroidx/room/AmbiguousColumnResolver$Solution;", PrivilegedApp.f6529f, "NO_SOLUTION", "Landroidx/room/AmbiguousColumnResolver$Solution;", "getNO_SOLUTION", "()Landroidx/room/AmbiguousColumnResolver$Solution;", Constants.CONSTRUCTOR_NAME, "()V", "room-common"}, m61529k = 1, m61530mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final Solution build(@NotNull List<C1387a> matches) {
                boolean z;
                Intrinsics.checkNotNullParameter(matches, "matches");
                List<C1387a> list = matches;
                int i = 0;
                int i2 = 0;
                for (C1387a c1387a : list) {
                    i2 += ((c1387a.m6274b().getLast() - c1387a.m6274b().getFirst()) + 1) - c1387a.m6273a().size();
                }
                Iterator<T> it2 = list.iterator();
                if (!it2.hasNext()) {
                    throw new NoSuchElementException();
                }
                int first = ((C1387a) it2.next()).m6274b().getFirst();
                while (it2.hasNext()) {
                    int first2 = ((C1387a) it2.next()).m6274b().getFirst();
                    if (first > first2) {
                        first = first2;
                    }
                }
                Iterator<T> it3 = list.iterator();
                if (!it3.hasNext()) {
                    throw new NoSuchElementException();
                }
                int last = ((C1387a) it3.next()).m6274b().getLast();
                while (it3.hasNext()) {
                    int last2 = ((C1387a) it3.next()).m6274b().getLast();
                    if (last < last2) {
                        last = last2;
                    }
                }
                Iterable intRange = new IntRange(first, last);
                if (!(intRange instanceof Collection) || !((Collection) intRange).isEmpty()) {
                    Iterator it4 = intRange.iterator();
                    int i3 = 0;
                    while (it4.hasNext()) {
                        int nextInt = ((IntIterator) it4).nextInt();
                        Iterator<T> it5 = list.iterator();
                        int i4 = 0;
                        while (true) {
                            if (!it5.hasNext()) {
                                z = false;
                                break;
                            }
                            if (((C1387a) it5.next()).m6274b().contains(nextInt)) {
                                i4++;
                            }
                            if (i4 > 1) {
                                z = true;
                                break;
                            }
                        }
                        if (z && (i3 = i3 + 1) < 0) {
                            CollectionsKt__CollectionsKt.throwCountOverflow();
                        }
                    }
                    i = i3;
                }
                return new Solution(matches, i2, i);
            }

            @NotNull
            public final Solution getNO_SOLUTION() {
                return Solution.f10014i;
            }

            public Companion() {
            }
        }

        static {
            List emptyList;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            f10014i = new Solution(emptyList, Integer.MAX_VALUE, Integer.MAX_VALUE);
        }

        public Solution(@NotNull List<C1387a> matches, int i, int i2) {
            Intrinsics.checkNotNullParameter(matches, "matches");
            this.f10015e = matches;
            this.f10016f = i;
            this.f10017g = i2;
        }

        @Override // java.lang.Comparable
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public int compareTo(@NotNull Solution other) {
            Intrinsics.checkNotNullParameter(other, "other");
            int compare = Intrinsics.compare(this.f10017g, other.f10017g);
            return compare != 0 ? compare : Intrinsics.compare(this.f10016f, other.f10016f);
        }

        /* renamed from: c */
        public final int m6270c() {
            return this.f10016f;
        }

        @NotNull
        /* renamed from: d */
        public final List<C1387a> m6271d() {
            return this.f10015e;
        }

        /* renamed from: e */
        public final int m6272e() {
            return this.f10017g;
        }
    }

    /* renamed from: androidx.room.AmbiguousColumnResolver$a */
    /* loaded from: classes3.dex */
    public static final class C1387a {

        /* renamed from: a */
        @NotNull
        public final IntRange f10018a;

        /* renamed from: b */
        @NotNull
        public final List<Integer> f10019b;

        public C1387a(@NotNull IntRange resultRange, @NotNull List<Integer> resultIndices) {
            Intrinsics.checkNotNullParameter(resultRange, "resultRange");
            Intrinsics.checkNotNullParameter(resultIndices, "resultIndices");
            this.f10018a = resultRange;
            this.f10019b = resultIndices;
        }

        @NotNull
        /* renamed from: a */
        public final List<Integer> m6273a() {
            return this.f10019b;
        }

        @NotNull
        /* renamed from: b */
        public final IntRange m6274b() {
            return this.f10018a;
        }
    }

    /* renamed from: androidx.room.AmbiguousColumnResolver$b */
    /* loaded from: classes3.dex */
    public static final class C1388b {

        /* renamed from: a */
        @NotNull
        public final String f10020a;

        /* renamed from: b */
        public final int f10021b;

        public C1388b(@NotNull String name, int i) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.f10020a = name;
            this.f10021b = i;
        }

        /* renamed from: d */
        public static /* synthetic */ C1388b m6275d(C1388b c1388b, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = c1388b.f10020a;
            }
            if ((i2 & 2) != 0) {
                i = c1388b.f10021b;
            }
            return c1388b.m6278c(str, i);
        }

        @NotNull
        /* renamed from: a */
        public final String m6276a() {
            return this.f10020a;
        }

        /* renamed from: b */
        public final int m6277b() {
            return this.f10021b;
        }

        @NotNull
        /* renamed from: c */
        public final C1388b m6278c(@NotNull String name, int i) {
            Intrinsics.checkNotNullParameter(name, "name");
            return new C1388b(name, i);
        }

        /* renamed from: e */
        public final int m6279e() {
            return this.f10021b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C1388b)) {
                return false;
            }
            C1388b c1388b = (C1388b) obj;
            return Intrinsics.areEqual(this.f10020a, c1388b.f10020a) && this.f10021b == c1388b.f10021b;
        }

        @NotNull
        /* renamed from: f */
        public final String m6280f() {
            return this.f10020a;
        }

        public int hashCode() {
            return (this.f10020a.hashCode() * 31) + Integer.hashCode(this.f10021b);
        }

        @NotNull
        public String toString() {
            return "ResultColumn(name=" + this.f10020a + ", index=" + this.f10021b + ')';
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m6265b(AmbiguousColumnResolver ambiguousColumnResolver, List list, List list2, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            list2 = new ArrayList();
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        ambiguousColumnResolver.m6266a(list, list2, i, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [T, androidx.room.AmbiguousColumnResolver$Solution] */
    @JvmStatic
    @NotNull
    public static final int[][] resolve(@NotNull String[] resultColumns, @NotNull String[][] mappings) {
        boolean z;
        Set createSetBuilder;
        Set build;
        List createListBuilder;
        List<C1388b> build2;
        int collectionSizeOrDefault;
        int[] intArray;
        List createListBuilder2;
        List build3;
        Intrinsics.checkNotNullParameter(resultColumns, "resultColumns");
        Intrinsics.checkNotNullParameter(mappings, "mappings");
        int length = resultColumns.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            z = true;
            if (i2 >= length) {
                break;
            }
            String str = resultColumns[i2];
            if (str.charAt(0) == '`' && str.charAt(str.length() - 1) == '`') {
                str = str.substring(1, str.length() - 1);
                Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String…ing(startIndex, endIndex)");
            }
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = str.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            resultColumns[i2] = lowerCase;
            i2++;
        }
        int length2 = mappings.length;
        for (int i3 = 0; i3 < length2; i3++) {
            int length3 = mappings[i3].length;
            for (int i4 = 0; i4 < length3; i4++) {
                String[] strArr = mappings[i3];
                String str2 = strArr[i4];
                Locale US2 = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US2, "US");
                String lowerCase2 = str2.toLowerCase(US2);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                strArr[i4] = lowerCase2;
            }
        }
        createSetBuilder = SetsKt__SetsJVMKt.createSetBuilder();
        for (String[] strArr2 : mappings) {
            CollectionsKt__MutableCollectionsKt.addAll(createSetBuilder, strArr2);
        }
        build = SetsKt__SetsJVMKt.build(createSetBuilder);
        createListBuilder = CollectionsKt__CollectionsJVMKt.createListBuilder();
        int length4 = resultColumns.length;
        int i5 = 0;
        int i6 = 0;
        while (i5 < length4) {
            String str3 = resultColumns[i5];
            int i7 = i6 + 1;
            if (build.contains(str3)) {
                createListBuilder.add(new C1388b(str3, i6));
            }
            i5++;
            i6 = i7;
        }
        build2 = CollectionsKt__CollectionsJVMKt.build(createListBuilder);
        int length5 = mappings.length;
        final ArrayList arrayList = new ArrayList(length5);
        for (int i8 = 0; i8 < length5; i8++) {
            arrayList.add(new ArrayList());
        }
        int length6 = mappings.length;
        int i9 = 0;
        final int i10 = 0;
        while (i9 < length6) {
            final String[] strArr3 = mappings[i9];
            int i11 = i10 + 1;
            INSTANCE.m6267c(build2, strArr3, new Function3<Integer, Integer, List<? extends C1388b>, Unit>() { // from class: androidx.room.AmbiguousColumnResolver$resolve$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, Integer num2, List<? extends AmbiguousColumnResolver.C1388b> list) {
                    invoke(num.intValue(), num2.intValue(), (List<AmbiguousColumnResolver.C1388b>) list);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i12, int i13, @NotNull List<AmbiguousColumnResolver.C1388b> resultColumnsSublist) {
                    Object obj;
                    Intrinsics.checkNotNullParameter(resultColumnsSublist, "resultColumnsSublist");
                    String[] strArr4 = strArr3;
                    ArrayList arrayList2 = new ArrayList(strArr4.length);
                    for (String str4 : strArr4) {
                        Iterator<T> it2 = resultColumnsSublist.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                obj = it2.next();
                                if (Intrinsics.areEqual(str4, ((AmbiguousColumnResolver.C1388b) obj).m6276a())) {
                                    break;
                                }
                            } else {
                                obj = null;
                                break;
                            }
                        }
                        AmbiguousColumnResolver.C1388b c1388b = (AmbiguousColumnResolver.C1388b) obj;
                        if (c1388b == null) {
                            return;
                        }
                        arrayList2.add(Integer.valueOf(c1388b.m6279e()));
                    }
                    arrayList.get(i10).add(new AmbiguousColumnResolver.C1387a(new IntRange(i12, i13 - 1), arrayList2));
                }
            });
            if (((List) arrayList.get(i10)).isEmpty()) {
                ArrayList arrayList2 = new ArrayList(strArr3.length);
                int length7 = strArr3.length;
                for (int i12 = i; i12 < length7; i12++) {
                    String str4 = strArr3[i12];
                    createListBuilder2 = CollectionsKt__CollectionsJVMKt.createListBuilder();
                    for (C1388b c1388b : build2) {
                        if (Intrinsics.areEqual(str4, c1388b.m6280f())) {
                            createListBuilder2.add(Integer.valueOf(c1388b.m6279e()));
                        }
                    }
                    build3 = CollectionsKt__CollectionsJVMKt.build(createListBuilder2);
                    if (!(!build3.isEmpty())) {
                        throw new IllegalStateException(("Column " + str4 + " not found in result").toString());
                    }
                    arrayList2.add(build3);
                }
                m6265b(INSTANCE, arrayList2, null, 0, new Function1<List<? extends Integer>, Unit>() { // from class: androidx.room.AmbiguousColumnResolver$resolve$1$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(List<? extends Integer> list) {
                        invoke2((List<Integer>) list);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull List<Integer> indices) {
                        Intrinsics.checkNotNullParameter(indices, "indices");
                        List<Integer> list = indices;
                        Iterator<T> it2 = list.iterator();
                        if (it2.hasNext()) {
                            int intValue = ((Number) it2.next()).intValue();
                            while (it2.hasNext()) {
                                int intValue2 = ((Number) it2.next()).intValue();
                                if (intValue > intValue2) {
                                    intValue = intValue2;
                                }
                            }
                            Iterator<T> it3 = list.iterator();
                            if (it3.hasNext()) {
                                int intValue3 = ((Number) it3.next()).intValue();
                                while (it3.hasNext()) {
                                    int intValue4 = ((Number) it3.next()).intValue();
                                    if (intValue3 < intValue4) {
                                        intValue3 = intValue4;
                                    }
                                }
                                arrayList.get(i10).add(new AmbiguousColumnResolver.C1387a(new IntRange(intValue, intValue3), indices));
                                return;
                            }
                            throw new NoSuchElementException();
                        }
                        throw new NoSuchElementException();
                    }
                }, 6, null);
            }
            i9++;
            i10 = i11;
            i = 0;
        }
        if (!arrayList.isEmpty()) {
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (!(!((List) it2.next()).isEmpty())) {
                    z = false;
                    break;
                }
            }
        }
        if (!z) {
            throw new IllegalStateException("Failed to find matches for all mappings".toString());
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = Solution.f10013h.getNO_SOLUTION();
        m6265b(INSTANCE, arrayList, null, 0, new Function1<List<? extends C1387a>, Unit>() { // from class: androidx.room.AmbiguousColumnResolver$resolve$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends AmbiguousColumnResolver.C1387a> list) {
                invoke2((List<AmbiguousColumnResolver.C1387a>) list);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Type inference failed for: r2v1, types: [T, androidx.room.AmbiguousColumnResolver$Solution] */
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<AmbiguousColumnResolver.C1387a> it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                ?? build4 = AmbiguousColumnResolver.Solution.f10013h.build(it3);
                if (build4.compareTo(objectRef.element) < 0) {
                    objectRef.element = build4;
                }
            }
        }, 6, null);
        List<C1387a> m6271d = ((Solution) objectRef.element).m6271d();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(m6271d, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it3 = m6271d.iterator();
        while (it3.hasNext()) {
            intArray = CollectionsKt___CollectionsKt.toIntArray(((C1387a) it3.next()).m6273a());
            arrayList3.add(intArray);
        }
        Object[] array = arrayList3.toArray(new int[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (int[][]) array;
    }

    /* renamed from: a */
    public final <T> void m6266a(List<? extends List<? extends T>> content, List<T> current, int depth, Function1<? super List<? extends T>, Unit> block) {
        List list;
        if (depth == content.size()) {
            list = CollectionsKt___CollectionsKt.toList(current);
            block.invoke(list);
            return;
        }
        Iterator<T> it2 = content.get(depth).iterator();
        while (it2.hasNext()) {
            current.add(it2.next());
            INSTANCE.m6266a(content, current, depth + 1, block);
            CollectionsKt__MutableCollectionsKt.removeLast(current);
        }
    }

    /* renamed from: c */
    public final void m6267c(List<C1388b> content, String[] pattern, Function3<? super Integer, ? super Integer, ? super List<C1388b>, Unit> onHashMatch) {
        int i = 0;
        int i2 = 0;
        for (String str : pattern) {
            i2 += str.hashCode();
        }
        int length = pattern.length;
        Iterator<T> it2 = content.subList(0, length).iterator();
        int i3 = 0;
        while (it2.hasNext()) {
            i3 += ((C1388b) it2.next()).m6280f().hashCode();
        }
        while (true) {
            if (i2 == i3) {
                onHashMatch.invoke(Integer.valueOf(i), Integer.valueOf(length), content.subList(i, length));
            }
            i++;
            length++;
            if (length > content.size()) {
                return;
            } else {
                i3 = (i3 - content.get(i - 1).m6280f().hashCode()) + content.get(length - 1).m6280f().hashCode();
            }
        }
    }
}
