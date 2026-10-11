package com.onyx.galaxy.note.common.view;

import androidx.core.provider.DocumentsContractCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.onyx.galaxy.note.common.view.BaseNodeAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b.\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0004*\u00020\u00032\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00028\u00010\u0005:\u0002OPB\u0007¢\u0006\u0004\bM\u0010NJ\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u001e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0002J\u0010\u0010\f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u001c\u0010\u0010\u001a\u00020\u000f2\u0012\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00060\rH\u0002J$\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u00072\u0012\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00060\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0002JP\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00060\u00182\u0012\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00060\r2\b\b\u0002\u0010\u0015\u001a\u00020\u00142\u001c\b\u0002\u0010\u0017\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0016H\u0002J\u0016\u0010\u001b\u001a\u00020\u000f2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0002J\u0012\u0010\u001d\u001a\u00020\u001c*\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0002J\u0012\u0010\u001e\u001a\u00020\u001c*\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0002J\u001a\u0010 \u001a\u00020\u000f*\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\u001f\u001a\u00020\u001cH\u0002J\u001e\u0010\"\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u00072\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u001e\u0010$\u001a\u00020\u000f2\u0014\u0010\u0013\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0018\u00010#H\u0016J\u001f\u0010%\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u00072\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0096\u0002J$\u0010'\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u00072\u0012\u0010&\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00060\rH\u0016J\u001c\u0010'\u001a\u00020\u000f2\u0012\u0010&\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00060\rH\u0016J\u0016\u0010\"\u001a\u00020\u000f2\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u0016\u0010(\u001a\u00020\u000f2\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u0010\u0010)\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u000e\u0010*\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u0007J\u0016\u0010,\u001a\u00020\u001c2\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u0016\u0010-\u001a\u00020\u001c2\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u001e\u0010.\u001a\u00020\u000f2\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\u001f\u001a\u00020\u001cH\u0016J\"\u00100\u001a\u00020\u000f2\f\u0010/\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006J*\u00100\u001a\u00020\u000f2\f\u0010/\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u00101\u001a\u00020\u00072\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006J\"\u00103\u001a\u00020\u000f2\f\u0010/\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\f\u00102\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006J(\u00105\u001a\u00020\u000f2\f\u0010/\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0012\u00104\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00060\rJ0\u00109\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\b\u0002\u00106\u001a\u00020\u001c2\b\b\u0002\u00107\u001a\u00020\u001c2\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u0001H\u0016J0\u0010:\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\b\u0002\u00106\u001a\u00020\u001c2\b\b\u0002\u00107\u001a\u00020\u001c2\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u0001H\u0016J.\u0010;\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\b\u0002\u00106\u001a\u00020\u001c2\b\b\u0002\u00107\u001a\u00020\u001c2\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u0001J.\u0010<\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\b\u0002\u00106\u001a\u00020\u001c2\b\b\u0002\u00107\u001a\u00020\u001c2\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u0001J.\u0010=\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\b\u0002\u00106\u001a\u00020\u001c2\b\b\u0002\u00107\u001a\u00020\u001c2\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u0001JN\u0010B\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010>\u001a\u00020\u001c2\b\b\u0002\u0010?\u001a\u00020\u001c2\b\b\u0002\u00106\u001a\u00020\u001c2\b\b\u0002\u00107\u001a\u00020\u001c2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u0001J\u0014\u0010C\u001a\u00020\u00072\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006J\u000e\u0010C\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007J_\u0010G\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010D\u001a\u00020\u001c2\b\b\u0002\u00106\u001a\u00020\u001c2\b\b\u0002\u00107\u001a\u00020\u001c2\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u00012\u001c\b\u0002\u0010\u0017\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0016H\u0000¢\u0006\u0004\bE\u0010FJ_\u0010J\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010H\u001a\u00020\u001c2\b\b\u0002\u00106\u001a\u00020\u001c2\b\b\u0002\u00107\u001a\u00020\u001c2\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u00012\u001c\b\u0002\u0010\u0017\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0016H\u0000¢\u0006\u0004\bI\u0010FR\u0014\u0010L\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001d\u0010K¨\u0006Q"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;", "", "T", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "VH", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/base/data/Tree;", "", "position", "p", "parent", "m", "x", "", FirebaseAnalytics.Param.ITEMS, "", "t", "s", "w", "list", "Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;", "flatType", "Lkotlin/Function1;", "dataBlock", "", GoogleApiAvailabilityLight.f29016b, "node", "v", "", "r", "q", "expanded", "y", "data", "add", "", "submitList", ExtensionNamespaceContext.EXSLT_SET_PREFIX, "collection", "addAll", SyncConstant.SYNC_ACTION_REMOVE, "removeAt", "removeNodeAt", DocumentsContractCompat.f5557a, "isExpandTreeNode", "isTreeItemExpanded", "setTreeItemExpand", "parentNode", "nodeAddData", "childIndex", "childNode", "nodeRemoveData", "newData", "nodeReplaceChildData", "animate", "notify", "parentPayload", "collapse", "expand", "expandOrCollapse", "expandAndChild", "collapseAndChild", "isExpandedChild", "isCollapseChild", "expandPayload", "collapsePayload", "expandAndCollapseOther", "findParentNode", "isChangeChildCollapse", "collapseInternal$note_overseasRelease", "(IZZZLjava/lang/Object;Lkotlin/jvm/functions/Function1;)I", "collapseInternal", "isChangeChildExpand", "expandInternal$note_overseasRelease", "expandInternal", "I", "headerLayoutCount", Constants.CONSTRUCTOR_NAME, "()V", "ExpandNodeItem", "FlatType", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaseNodeAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseNodeAdapter.kt\ncom/onyx/galaxy/note/common/view/BaseNodeAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,506:1\n766#2:507\n857#2,2:508\n*S KotlinDebug\n*F\n+ 1 BaseNodeAdapter.kt\ncom/onyx/galaxy/note/common/view/BaseNodeAdapter\n*L\n27#1:507\n27#1:508,2\n*E\n"})
/* loaded from: classes9.dex */
public abstract class BaseNodeAdapter<T, VH extends RecyclerView.ViewHolder> extends BaseQuickAdapter<Tree<T>, VH> {

    /* renamed from: r, reason: from kotlin metadata */
    public final int headerLayoutCount;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H&¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$ExpandNodeItem;", "", "isExpanded", "", "setExpand", "", "expanded", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface ExpandNodeItem {
        boolean isExpanded();

        void setExpand(boolean expanded);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;", "", "(Ljava/lang/String;I)V", "EXPAND", "COLLAPSE", "NO_CHANGE", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class FlatType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ FlatType[] $VALUES;
        public static final FlatType EXPAND = new FlatType("EXPAND", 0);
        public static final FlatType COLLAPSE = new FlatType("COLLAPSE", 1);
        public static final FlatType NO_CHANGE = new FlatType("NO_CHANGE", 2);

        private static final /* synthetic */ FlatType[] $values() {
            return new FlatType[]{EXPAND, COLLAPSE, NO_CHANGE};
        }

        static {
            FlatType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private FlatType(String str, int i) {
        }

        @NotNull
        public static EnumEntries<FlatType> getEntries() {
            return $ENTRIES;
        }

        public static FlatType valueOf(String str) {
            return (FlatType) Enum.valueOf(FlatType.class, str);
        }

        public static FlatType[] values() {
            return (FlatType[]) $VALUES.clone();
        }
    }

    public BaseNodeAdapter() {
        super(null, 1, null);
    }

    public static /* synthetic */ int collapse$default(BaseNodeAdapter baseNodeAdapter, int i, boolean z, boolean z2, Object obj, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: collapse");
        }
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            z2 = true;
        }
        if ((i2 & 8) != 0) {
            obj = null;
        }
        return baseNodeAdapter.collapse(i, z, z2, obj);
    }

    public static /* synthetic */ int collapseAndChild$default(BaseNodeAdapter baseNodeAdapter, int i, boolean z, boolean z2, Object obj, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: collapseAndChild");
        }
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            z2 = true;
        }
        if ((i2 & 8) != 0) {
            obj = null;
        }
        return baseNodeAdapter.collapseAndChild(i, z, z2, obj);
    }

    public static /* synthetic */ int collapseInternal$note_overseasRelease$default(BaseNodeAdapter baseNodeAdapter, int i, boolean z, boolean z2, boolean z3, Object obj, Function1 function1, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: collapseInternal");
        }
        if ((i2 & 2) != 0) {
            z = false;
        }
        return baseNodeAdapter.collapseInternal$note_overseasRelease(i, z, (i2 & 4) != 0 ? true : z2, (i2 & 8) != 0 ? true : z3, (i2 & 16) != 0 ? null : obj, (i2 & 32) != 0 ? null : function1);
    }

    public static /* synthetic */ int expand$default(BaseNodeAdapter baseNodeAdapter, int i, boolean z, boolean z2, Object obj, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expand");
        }
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            z2 = true;
        }
        if ((i2 & 8) != 0) {
            obj = null;
        }
        return baseNodeAdapter.expand(i, z, z2, obj);
    }

    public static /* synthetic */ int expandAndChild$default(BaseNodeAdapter baseNodeAdapter, int i, boolean z, boolean z2, Object obj, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expandAndChild");
        }
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            z2 = true;
        }
        if ((i2 & 8) != 0) {
            obj = null;
        }
        return baseNodeAdapter.expandAndChild(i, z, z2, obj);
    }

    public static /* synthetic */ void expandAndCollapseOther$default(BaseNodeAdapter baseNodeAdapter, int i, boolean z, boolean z2, boolean z3, boolean z4, Object obj, Object obj2, int i2, Object obj3) {
        if (obj3 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expandAndCollapseOther");
        }
        baseNodeAdapter.expandAndCollapseOther(i, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? true : z2, (i2 & 8) != 0 ? true : z3, (i2 & 16) == 0 ? z4 : true, (i2 & 32) != 0 ? null : obj, (i2 & 64) == 0 ? obj2 : null);
    }

    public static /* synthetic */ int expandInternal$note_overseasRelease$default(BaseNodeAdapter baseNodeAdapter, int i, boolean z, boolean z2, boolean z3, Object obj, Function1 function1, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expandInternal");
        }
        if ((i2 & 2) != 0) {
            z = false;
        }
        return baseNodeAdapter.expandInternal$note_overseasRelease(i, z, (i2 & 4) != 0 ? true : z2, (i2 & 8) != 0 ? true : z3, (i2 & 16) != 0 ? null : obj, (i2 & 32) != 0 ? null : function1);
    }

    public static /* synthetic */ int expandOrCollapse$default(BaseNodeAdapter baseNodeAdapter, int i, boolean z, boolean z2, Object obj, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expandOrCollapse");
        }
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            z2 = true;
        }
        if ((i2 & 8) != 0) {
            obj = null;
        }
        return baseNodeAdapter.expandOrCollapse(i, z, z2, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: o */
    public static /* synthetic */ List m45122o(BaseNodeAdapter baseNodeAdapter, Collection collection, FlatType flatType, Function1 function1, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: flatData");
        }
        if ((i & 2) != 0) {
            flatType = FlatType.NO_CHANGE;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        return baseNodeAdapter.m45125n(collection, flatType, function1);
    }

    /* renamed from: u */
    public static final void m45123u(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void addAll(int position, @NotNull Collection<Tree<T>> collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        m45129s(position, m45122o(this, collection, null, null, 6, null));
    }

    public int collapse(int position, boolean animate, boolean notify, @Nullable Object parentPayload) {
        return collapseInternal$note_overseasRelease$default(this, position, false, animate, notify, parentPayload, null, 32, null);
    }

    public final int collapseAndChild(int position, boolean animate, boolean notify, @Nullable Object parentPayload) {
        return collapseInternal$note_overseasRelease$default(this, position, true, animate, notify, parentPayload, null, 32, null);
    }

    public final int collapseInternal$note_overseasRelease(int position, boolean isChangeChildCollapse, boolean animate, boolean notify, @Nullable Object parentPayload, @Nullable Function1<? super Tree<T>, Unit> dataBlock) {
        Tree<T> tree = (Tree) getItems().get(position);
        if (!m45128r(tree)) {
            return 0;
        }
        int i = position + this.headerLayoutCount;
        m45134y(tree, false);
        if (tree.getChildren().isEmpty()) {
            notifyItemChanged(i, parentPayload);
            return 0;
        }
        List<Tree<T>> m45125n = m45125n(tree.getChildren(), isChangeChildCollapse ? FlatType.COLLAPSE : FlatType.NO_CHANGE, dataBlock);
        int size = m45125n.size();
        m45130t(m45125n);
        if (notify) {
            if (animate) {
                notifyItemChanged(i, parentPayload);
            } else {
                notifyDataSetChanged();
            }
        }
        return size;
    }

    public int expand(int position, boolean animate, boolean notify, @Nullable Object parentPayload) {
        return expandInternal$note_overseasRelease$default(this, position, false, animate, notify, parentPayload, null, 32, null);
    }

    public final int expandAndChild(int position, boolean animate, boolean notify, @Nullable Object parentPayload) {
        return expandInternal$note_overseasRelease$default(this, position, true, animate, notify, parentPayload, null, 32, null);
    }

    public final void expandAndCollapseOther(int position, boolean isExpandedChild, boolean isCollapseChild, boolean animate, boolean notify, @Nullable Object expandPayload, @Nullable Object collapsePayload) {
        int i;
        int expandInternal$note_overseasRelease$default = expandInternal$note_overseasRelease$default(this, position, isExpandedChild, animate, notify, expandPayload, null, 32, null);
        if (expandInternal$note_overseasRelease$default == 0) {
            return;
        }
        int findParentNode = findParentNode(position);
        int i2 = findParentNode == -1 ? 0 : findParentNode + 1;
        if (position - i2 > 0) {
            int i3 = i2;
            i = position;
            do {
                int collapseInternal$note_overseasRelease$default = collapseInternal$note_overseasRelease$default(this, i3, isCollapseChild, animate, notify, collapsePayload, null, 32, null);
                i3++;
                i -= collapseInternal$note_overseasRelease$default;
            } while (i3 < i);
        } else {
            i = position;
        }
        int size = findParentNode == -1 ? getItems().size() - 1 : findParentNode + ((Tree) getItems().get(findParentNode)).getChildren().size() + expandInternal$note_overseasRelease$default;
        int i4 = i + expandInternal$note_overseasRelease$default;
        if (i4 < size) {
            int i5 = i4 + 1;
            while (i5 <= size) {
                int collapseInternal$note_overseasRelease$default2 = collapseInternal$note_overseasRelease$default(this, i5, isCollapseChild, animate, notify, collapsePayload, null, 32, null);
                i5++;
                size -= collapseInternal$note_overseasRelease$default2;
            }
        }
    }

    public final int expandInternal$note_overseasRelease(int position, boolean isChangeChildExpand, boolean animate, boolean notify, @Nullable Object parentPayload, @Nullable Function1<? super Tree<T>, Unit> dataBlock) {
        Tree<T> tree = (Tree) getItems().get(position);
        if (m45128r(tree)) {
            return 0;
        }
        int i = this.headerLayoutCount + position;
        m45134y(tree, true);
        if (tree.getChildren().isEmpty()) {
            notifyItemChanged(i, parentPayload);
            return 0;
        }
        List<Tree<T>> m45125n = m45125n(tree.getChildren(), isChangeChildExpand ? FlatType.EXPAND : FlatType.NO_CHANGE, dataBlock);
        int size = m45125n.size();
        m45129s(position + 1, m45125n);
        if (notify) {
            if (animate) {
                notifyItemChanged(i, parentPayload);
            } else {
                notifyDataSetChanged();
            }
        }
        return size;
    }

    public final int expandOrCollapse(int position, boolean animate, boolean notify, @Nullable Object parentPayload) {
        Tree<T> tree = (Tree) getItems().get(position);
        if (m45127q(tree)) {
            return m45128r(tree) ? collapse(position, animate, notify, parentPayload) : expand(position, animate, notify, parentPayload);
        }
        return 0;
    }

    public final int findParentNode(@NotNull Tree<T> node) {
        Intrinsics.checkNotNullParameter(node, "node");
        int indexOf = getItems().indexOf(node);
        if (indexOf != -1 && indexOf != 0) {
            for (int i = indexOf - 1; -1 < i; i--) {
                if (((Tree) getItems().get(i)).getChildren().contains(node)) {
                    return i;
                }
            }
        }
        return -1;
    }

    public boolean isExpandTreeNode(@NotNull Tree<T> tree) {
        Intrinsics.checkNotNullParameter(tree, "tree");
        return tree.getItem() instanceof ExpandNodeItem;
    }

    public boolean isTreeItemExpanded(@NotNull Tree<T> tree) {
        ExpandNodeItem expandNodeItem;
        Intrinsics.checkNotNullParameter(tree, "tree");
        return m45127q(tree) && (expandNodeItem = (ExpandNodeItem) tree.getItem()) != null && expandNodeItem.isExpanded();
    }

    /* renamed from: m */
    public final int m45124m(int position, Tree<T> parent) {
        int indexOf = getItems().indexOf(parent);
        if (position == 0) {
            return indexOf + 1;
        }
        int i = indexOf;
        for (int i2 = 0; i2 < position && (indexOf == -1 || i + 1 < getItems().size()); i2++) {
            int i3 = i + 1;
            i = i3 + m45126p(i3);
        }
        return i + 1;
    }

    /* renamed from: n */
    public final List<Tree<T>> m45125n(Collection<Tree<T>> list, FlatType flatType, Function1<? super Tree<T>, Unit> dataBlock) {
        ArrayList arrayList = new ArrayList();
        for (Tree<T> tree : list) {
            arrayList.add(tree);
            if (dataBlock != null) {
                dataBlock.invoke(tree);
            }
            if (m45127q(tree)) {
                FlatType flatType2 = FlatType.EXPAND;
                if (flatType == flatType2 || m45128r(tree)) {
                    List<Tree<T>> children = tree.getChildren();
                    if (!children.isEmpty()) {
                        arrayList.addAll(m45125n(children, flatType, dataBlock));
                    }
                }
                if (flatType != FlatType.NO_CHANGE) {
                    m45134y(tree, flatType == flatType2);
                }
            } else {
                List<Tree<T>> children2 = tree.getChildren();
                if (!children2.isEmpty()) {
                    arrayList.addAll(m45125n(children2, flatType, dataBlock));
                }
            }
        }
        return arrayList;
    }

    public final void nodeAddData(@NotNull Tree<T> parentNode, @NotNull Tree<T> data) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(data, "data");
        nodeAddData(parentNode, parentNode.getChildren().size(), data);
        m45131v(parentNode);
    }

    public final void nodeRemoveData(@NotNull Tree<T> parentNode, @NotNull Tree<T> childNode) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(childNode, "childNode");
        List<Tree<T>> children = parentNode.getChildren();
        if (m45127q(parentNode) && !m45128r(parentNode)) {
            children.remove(childNode);
            return;
        }
        remove((Tree) childNode);
        children.remove(childNode);
        m45131v(parentNode);
    }

    public final void nodeReplaceChildData(@NotNull Tree<T> parentNode, @NotNull Collection<Tree<T>> newData) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(newData, "newData");
        List<Tree<T>> children = parentNode.getChildren();
        if (m45127q(parentNode) && !m45128r(parentNode)) {
            children.clear();
            children.addAll(newData);
            return;
        }
        int indexOf = getItems().indexOf(parentNode);
        int m45132w = m45132w(indexOf);
        children.clear();
        children.addAll(newData);
        List m45122o = m45122o(this, newData, null, null, 6, null);
        int i = indexOf + 1;
        m45129s(i, m45122o);
        int i2 = i + this.headerLayoutCount;
        if (m45132w == m45122o.size()) {
            notifyItemRangeChanged(i2, m45132w);
        } else {
            notifyItemRangeRemoved(i2, m45132w);
            notifyItemRangeInserted(i2, m45122o.size());
        }
        m45131v(parentNode);
    }

    /* renamed from: p */
    public final int m45126p(int position) {
        Tree tree = (Tree) getItems().get(position);
        int size = getItems().size();
        int i = 0;
        for (int i2 = position + 1; i2 < size && ((Tree) getItems().get(i2)).getLevel() > tree.getLevel(); i2++) {
            i++;
        }
        return i;
    }

    /* renamed from: q */
    public final boolean m45127q(Tree<T> tree) {
        return isExpandTreeNode(tree);
    }

    /* renamed from: r */
    public final boolean m45128r(Tree<T> tree) {
        return isTreeItemExpanded(tree);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void removeAt(int position) {
        m45133x(position);
        if (getItems().isEmpty()) {
            notifyDataSetChanged();
        }
    }

    public final void removeNodeAt(int position) {
        Unit unit;
        Tree<T> tree = (Tree) getItems().get(position);
        Tree<T> parent = tree.getParent();
        if (parent != null) {
            nodeRemoveData(parent, tree);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            removeAt(position);
        }
    }

    /* renamed from: s */
    public final void m45129s(int position, Collection<Tree<T>> items) {
        super.addAll(position, items);
    }

    public void setTreeItemExpand(@NotNull Tree<T> tree, boolean expanded) {
        Intrinsics.checkNotNullParameter(tree, "tree");
        ExpandNodeItem expandNodeItem = (ExpandNodeItem) tree.getItem();
        if (expandNodeItem != null) {
            expandNodeItem.setExpand(expanded);
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void submitList(@Nullable List<Tree<T>> list) {
        Tree tree;
        ArrayList arrayList;
        Object firstOrNull;
        if (list != null) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) list);
            tree = (Tree) firstOrNull;
        } else {
            tree = null;
        }
        if (tree != null) {
            arrayList = new ArrayList();
            for (T t : list) {
                if (tree.getLevel() == ((Tree) t).getLevel()) {
                    arrayList.add(t);
                }
            }
        } else {
            arrayList = new ArrayList();
        }
        super.submitList(m45122o(this, arrayList, null, null, 6, null));
    }

    /* renamed from: t */
    public final void m45130t(Collection<Tree<T>> items) {
        Iterator<Tree<T>> it2 = items.iterator();
        final Function1<Tree<T>, Unit> function1 = new Function1<Tree<T>, Unit>(this) { // from class: com.onyx.galaxy.note.common.view.BaseNodeAdapter$rawRemoveAll$1
            final /* synthetic */ BaseNodeAdapter<T, VH> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke((Tree) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(@NotNull Tree<T> it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                int indexOf = this.this$0.getItems().indexOf(it3);
                if (indexOf >= 0) {
                    super/*com.chad.library.adapter4.BaseQuickAdapter*/.removeAt(indexOf);
                }
            }
        };
        it2.forEachRemaining(new Consumer() { // from class: com.sunia.HTREnginev2.tn
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BaseNodeAdapter.m45123u(Function1.this, obj);
            }
        });
    }

    /* renamed from: v */
    public final void m45131v(Tree<T> node) {
        int indexOf = getItems().indexOf(node);
        if (indexOf >= 0) {
            notifyItemChanged(indexOf);
        }
    }

    /* renamed from: w */
    public final int m45132w(int position) {
        if (position >= getItems().size()) {
            return 0;
        }
        Tree<T> tree = (Tree) getItems().get(position);
        if (!(!tree.getChildren().isEmpty())) {
            return 0;
        }
        if (!m45127q(tree)) {
            List m45122o = m45122o(this, tree.getChildren(), null, null, 6, null);
            m45130t(m45122o);
            return m45122o.size();
        }
        if (!m45128r(tree)) {
            return 0;
        }
        List m45122o2 = m45122o(this, tree.getChildren(), null, null, 6, null);
        m45130t(m45122o2);
        return m45122o2.size();
    }

    /* renamed from: x */
    public final int m45133x(int position) {
        if (position >= getItems().size()) {
            return 0;
        }
        int m45132w = m45132w(position);
        super.removeAt(position);
        return m45132w + 1;
    }

    /* renamed from: y */
    public final void m45134y(Tree<T> tree, boolean z) {
        setTreeItemExpand(tree, z);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void remove(@NotNull Tree<T> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        int indexOf = getItems().indexOf(data);
        if (indexOf >= 0) {
            removeAt(indexOf);
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void set(int position, @NotNull Tree<T> data) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(data, "data");
        int m45133x = m45133x(position);
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(data);
        List m45122o = m45122o(this, arrayListOf, null, null, 6, null);
        m45129s(position, m45122o);
        if (m45133x == m45122o.size()) {
            notifyItemRangeChanged(position + this.headerLayoutCount, m45133x);
        } else {
            notifyItemRangeRemoved(this.headerLayoutCount + position, m45133x);
            notifyItemRangeInserted(position + this.headerLayoutCount, m45122o.size());
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void add(int position, @NotNull Tree<T> data) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(data, "data");
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(data);
        addAll(position, arrayListOf);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void addAll(@NotNull Collection<Tree<T>> collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        m45129s(getItems().size(), m45122o(this, collection, null, null, 6, null));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void add(@NotNull Tree<T> data) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(data, "data");
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(data);
        addAll(arrayListOf);
    }

    public final int findParentNode(int position) {
        if (position == 0) {
            return -1;
        }
        Tree tree = (Tree) getItems().get(position);
        for (int i = position - 1; -1 < i; i--) {
            if (((Tree) getItems().get(i)).getChildren().contains(tree)) {
                return i;
            }
        }
        return -1;
    }

    public final void nodeAddData(@NotNull Tree<T> parentNode, int childIndex, @NotNull Tree<T> data) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(data, "data");
        List<Tree<T>> children = parentNode.getChildren();
        if (m45127q(parentNode) && m45128r(parentNode)) {
            int m45124m = m45124m(childIndex, parentNode);
            CollectionKt.safeAdd(children, childIndex, data);
            add(m45124m, (Tree) data);
        } else {
            children.add(childIndex, data);
        }
        m45131v(parentNode);
    }
}
