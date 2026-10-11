package com.onyx.galaxy.note.settings.data;

import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.galaxy.note.category.data.NoteSelectType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.tencent.mmkv.MMKV;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\f\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0010\u001a\u00020\r\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;", "", "Lcom/onyx/galaxy/note/category/data/NoteSelectType;", "get", "value", "", "put", "", "a", Constants.STRING_SIG, "getKey", "()Ljava/lang/String;", "key", "Lcom/tencent/mmkv/MMKV;", "b", "Lcom/tencent/mmkv/MMKV;", "parent", "c", "Lcom/onyx/galaxy/note/category/data/NoteSelectType;", "defaultValue", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/tencent/mmkv/MMKV;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteConfig.kt\ncom/onyx/galaxy/note/settings/data/NoteSelectTypeOption\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,289:1\n37#2,2:290\n11065#3:292\n11400#3,3:293\n*S KotlinDebug\n*F\n+ 1 NoteConfig.kt\ncom/onyx/galaxy/note/settings/data/NoteSelectTypeOption\n*L\n84#1:290,2\n84#1:292\n84#1:293,3\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteSelectTypeOption {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String key;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final MMKV parent;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final NoteSelectType defaultValue;

    public NoteSelectTypeOption() {
        this(null, null, null, 7, null);
    }

    @NotNull
    public final NoteSelectType get() {
        boolean contains;
        String string = this.parent.getString(this.key, this.defaultValue.toString());
        Object[] array = NoteSelectType.getEntries().toArray(new NoteSelectType[0]);
        ArrayList arrayList = new ArrayList(array.length);
        for (Object obj : array) {
            arrayList.add(((NoteSelectType) obj).toString());
        }
        contains = CollectionsKt___CollectionsKt.contains(arrayList, string);
        return (!contains || string == null) ? this.defaultValue : NoteSelectType.valueOf(string);
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    public final void put(@NotNull NoteSelectType value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.parent.putString(this.key, value.toString());
    }

    public NoteSelectTypeOption(@NotNull String key, @NotNull MMKV parent, @NotNull NoteSelectType defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        this.key = key;
        this.parent = parent;
        this.defaultValue = defaultValue;
    }

    public /* synthetic */ NoteSelectTypeOption(String str, MMKV mmkv, NoteSelectType noteSelectType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? NoteConfigConst.NOTE_LIST_SELECT_TYPE : str, (i & 2) != 0 ? MMKVUtils.INSTANCE.get() : mmkv, (i & 4) != 0 ? NoteSelectType.TAB_ALL : noteSelectType);
    }
}
