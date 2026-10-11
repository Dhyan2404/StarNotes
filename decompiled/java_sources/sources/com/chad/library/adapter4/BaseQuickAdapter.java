package com.chad.library.adapter4;

import android.animation.Animator;
import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.animation.AlphaInAnimation;
import com.chad.library.adapter4.animation.ItemAnimator;
import com.chad.library.adapter4.animation.ScaleInAnimation;
import com.chad.library.adapter4.animation.SlideInBottomAnimation;
import com.chad.library.adapter4.animation.SlideInLeftAnimation;
import com.chad.library.adapter4.animation.SlideInRightAnimation;
import com.chad.library.adapter4.util.AdapterUtilsKt;
import com.chad.library.adapter4.viewholder.StateLayoutVH;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u001e\b&\u0018\u0000 ¨\u0001*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0004*\u00020\u00032\b\u0012\u0004\u0012\u00020\u00030\u0005:\u000e©\u0001¨\u0001ª\u0001«\u0001¬\u0001\u00ad\u0001®\u0001B\u0018\u0012\u000e\b\u0002\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015¢\u0006\u0005\b§\u0001\u0010hJ\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0003H\u0002J'\u0010\u000f\u001a\u00028\u00012\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH$¢\u0006\u0004\b\u000f\u0010\u0010J)\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00020\r2\b\u0010\u0012\u001a\u0004\u0018\u00018\u0000H$¢\u0006\u0004\b\u0013\u0010\u0014J7\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00020\r2\b\u0010\u0012\u001a\u0004\u0018\u00018\u00002\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00010\u0015H\u0014¢\u0006\u0004\b\u0013\u0010\u0017J\u0016\u0010\u0019\u001a\u00020\r2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0014J\u001e\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0014J\u0006\u0010\u0019\u001a\u00020\rJ\u000e\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\rJ\u0016\u0010\u000f\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rJ\u0016\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\rJ$\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\r2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00010\u001cJ\u0010\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\rH\u0016J\u0010\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0003H\u0017J\u0010\u0010 \u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0003H\u0017J\u0010\u0010#\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020!H\u0017J\u0010\u0010$\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020!H\u0017J\u001f\u0010&\u001a\u00020\u00072\u0006\u0010%\u001a\u00028\u00012\u0006\u0010\u000e\u001a\u00020\rH\u0014¢\u0006\u0004\b&\u0010'J\u0018\u0010*\u001a\u00020\u00072\u0006\u0010)\u001a\u00020(2\u0006\u0010\u0011\u001a\u00020\rH\u0014J\u0018\u0010,\u001a\u00020+2\u0006\u0010)\u001a\u00020(2\u0006\u0010\u0011\u001a\u00020\rH\u0014J\u0018\u0010-\u001a\u00020\u00072\u0006\u0010)\u001a\u00020(2\u0006\u0010\u0011\u001a\u00020\rH\u0014J\u0018\u0010.\u001a\u00020+2\u0006\u0010)\u001a\u00020(2\u0006\u0010\u0011\u001a\u00020\rH\u0014J\u0010\u00100\u001a\u00020+2\u0006\u0010/\u001a\u00020\rH\u0016J\u0019\u00101\u001a\u0004\u0018\u00018\u00002\b\b\u0001\u0010\u0011\u001a\u00020\r¢\u0006\u0004\b1\u00102J\u0015\u00103\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00028\u0000¢\u0006\u0004\b3\u00104J\u0018\u00106\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\b\b\u0001\u00105\u001a\u00020\rJ\u001a\u00107\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\b\b\u0001\u00105\u001a\u00020\rH\u0007J\u0016\u00108\u001a\u00020+2\u000e\b\u0002\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015J\u0018\u0010;\u001a\u00020\u00072\u0006\u0010:\u001a\u0002092\u0006\u0010\u0006\u001a\u00020\u0003H\u0014J\u000e\u0010>\u001a\u00020\u00072\u0006\u0010=\u001a\u00020<J\u0018\u0010?\u001a\u00020\u00072\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0015H\u0016J\"\u0010A\u001a\u00020\u00072\b\b\u0001\u0010\u0011\u001a\u00020\r2\u0006\u0010@\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\bA\u0010BJ!\u0010C\u001a\u00020\u00072\b\b\u0001\u0010\u0011\u001a\u00020\r2\u0006\u0010@\u001a\u00028\u0000H\u0016¢\u0006\u0004\bC\u0010BJ\u0017\u0010C\u001a\u00020\u00072\u0006\u0010@\u001a\u00028\u0000H\u0016¢\u0006\u0004\bC\u0010DJ \u0010G\u001a\u00020\u00072\b\b\u0001\u0010\u0011\u001a\u00020\r2\f\u0010F\u001a\b\u0012\u0004\u0012\u00028\u00000EH\u0016J\u0016\u0010G\u001a\u00020\u00072\f\u0010F\u001a\b\u0012\u0004\u0012\u00028\u00000EH\u0016J\u0012\u0010H\u001a\u00020\u00072\b\b\u0001\u0010\u0011\u001a\u00020\rH\u0016J\u0017\u0010I\u001a\u00020\u00072\u0006\u0010@\u001a\u00028\u0000H\u0016¢\u0006\u0004\bI\u0010DJ\u0010\u0010L\u001a\u00020\u00072\u0006\u0010K\u001a\u00020JH\u0016J\u0018\u0010O\u001a\u00020\u00072\u0006\u0010M\u001a\u00020\r2\u0006\u0010N\u001a\u00020\rH\u0016J\u0018\u0010P\u001a\u00020\u00072\u0006\u0010M\u001a\u00020\r2\u0006\u0010N\u001a\u00020\rH\u0016J\"\u0010S\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u000e\u0010R\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010QJ\u000e\u0010T\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010QJ\"\u0010V\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u000e\u0010R\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010UJ\u000e\u0010W\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010UJ*\u0010Z\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0001\u0010X\u001a\u00020\r2\f\u0010R\u001a\b\u0012\u0004\u0012\u00028\u00000YJ\u001c\u0010[\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0001\u0010X\u001a\u00020\rJ*\u0010]\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0001\u0010X\u001a\u00020\r2\f\u0010R\u001a\b\u0012\u0004\u0012\u00028\u00000\\J\u001c\u0010^\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0001\u0010X\u001a\u00020\rJ\u001a\u0010`\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010R\u001a\u00020_J\u000e\u0010a\u001a\u00020\u00072\u0006\u0010R\u001a\u00020_J\u0006\u0010b\u001a\u00020\u0007R(\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u00158\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bc\u0010d\u001a\u0004\be\u0010f\"\u0004\bg\u0010hR\u0016\u0010k\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010jR\u001e\u0010n\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010mR\u001e\u0010q\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010pR$\u0010u\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000Y\u0018\u00010r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010tR$\u0010w\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\\\u0018\u00010r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010tR\u001e\u0010y\u001a\n\u0012\u0004\u0012\u00020_\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010dR\u0018\u0010{\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010zR-\u0010\u007f\u001a\u00020+2\u0006\u0010|\u001a\u00020+8\u0006@FX\u0086\u000e¢\u0006\u0015\n\u0004\b}\u0010~\u001a\u0005\b\u007f\u0010\u0080\u0001\"\u0006\b\u0081\u0001\u0010\u0082\u0001R5\u0010\u0089\u0001\u001a\u0004\u0018\u00010(2\b\u0010|\u001a\u0004\u0018\u00010(8\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\b\u0083\u0001\u0010\u0084\u0001\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001\"\u0006\b\u0087\u0001\u0010\u0088\u0001R(\u0010\u008d\u0001\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u008a\u0001\u0010~\u001a\u0006\b\u008b\u0001\u0010\u0080\u0001\"\u0006\b\u008c\u0001\u0010\u0082\u0001R(\u0010\u008f\u0001\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u008e\u0001\u0010~\u001a\u0006\b\u008f\u0001\u0010\u0080\u0001\"\u0006\b\u0090\u0001\u0010\u0082\u0001R6\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0091\u00012\t\u0010|\u001a\u0005\u0018\u00010\u0091\u00018\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0006\b\u0092\u0001\u0010\u0093\u0001\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001\"\u0005\b>\u0010\u0096\u0001R\u001b\u0010\u0098\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bx\u0010fR\u0013\u0010\"\u001a\u00020!8F¢\u0006\b\u001a\u0006\b\u0099\u0001\u0010\u009a\u0001R\u0013\u0010\n\u001a\u00020\t8F¢\u0006\b\u001a\u0006\b\u009b\u0001\u0010\u009c\u0001R\u0019\u0010\u009d\u0001\u001a\u00020+*\u00020\u00038Æ\u0002¢\u0006\b\u001a\u0006\b\u009d\u0001\u0010\u009e\u0001R1\u0010\u009f\u0001\u001a\u00020+2\u0006\u0010|\u001a\u00020+8F@FX\u0087\u000e¢\u0006\u0018\u0012\u0006\b¡\u0001\u0010¢\u0001\u001a\u0006\b\u009f\u0001\u0010\u0080\u0001\"\u0006\b \u0001\u0010\u0082\u0001R5\u0010¦\u0001\u001a\u0004\u0018\u00010(2\b\u0010|\u001a\u0004\u0018\u00010(8F@FX\u0087\u000e¢\u0006\u0018\u0012\u0006\b¥\u0001\u0010¢\u0001\u001a\u0006\b£\u0001\u0010\u0086\u0001\"\u0006\b¤\u0001\u0010\u0088\u0001¨\u0006¯\u0001"}, m61528d2 = {"Lcom/chad/library/adapter4/BaseQuickAdapter;", "", "T", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "VH", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "holder", "", C4921e.f26537n, "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "position", "item", "onBindViewHolder", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V", "", "payloads", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V", FirebaseAnalytics.Param.ITEMS, "getItemCount", "list", "getItemViewType", "", "", "getItemId", "onViewAttachedToWindow", "onViewDetachedFromWindow", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "onAttachedToRecyclerView", "onDetachedFromRecyclerView", "viewHolder", "bindViewClickListener", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V", "Landroid/view/View;", "v", "onItemClick", "", "onItemLongClick", "onItemChildClick", "onItemChildLongClick", "itemType", "isFullSpanItem", "getItem", "(I)Ljava/lang/Object;", "itemIndexOfFirst", "(Ljava/lang/Object;)I", "layoutResId", "setStateViewLayout", "setEmptyViewLayout", "displayEmptyView", "Landroid/animation/Animator;", "anim", "startItemAnimator", "Lcom/chad/library/adapter4/BaseQuickAdapter$AnimationType;", "animationType", "setItemAnimation", "submitList", "data", ExtensionNamespaceContext.EXSLT_SET_PREFIX, "(ILjava/lang/Object;)V", "add", "(Ljava/lang/Object;)V", "", "collection", "addAll", "removeAt", SyncConstant.SYNC_ACTION_REMOVE, "Lkotlin/ranges/IntRange;", SessionDescription.f26441q, "removeAtRange", "fromPosition", "toPosition", "swap", BaiduYunConstant.OPERATION_MOVE, "Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnItemClickListener", "getOnItemClickListener", "Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemLongClickListener;", "setOnItemLongClickListener", "getOnItemLongClickListener", "id", "Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;", "addOnItemChildClickListener", "removeOnItemChildClickListener", "Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildLongClickListener;", "addOnItemChildLongClickListener", "removeOnItemChildLongClickListener", "Lcom/chad/library/adapter4/BaseQuickAdapter$OnViewAttachStateChangeListener;", "addOnViewAttachStateChangeListener", "removeOnViewAttachStateChangeListener", "clearOnViewAttachStateChangeListener", "d", "Ljava/util/List;", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "e", "I", "mLastPosition", C6997f.f39671c, "Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;", "mOnItemClickListener", C6998g.f39679a, "Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemLongClickListener;", "mOnItemLongClickListener", "Landroid/util/SparseArray;", C6999h.f39688c, "Landroid/util/SparseArray;", "mOnItemChildClickArray", "i", "mOnItemChildLongClickArray", "j", "mOnViewAttachStateChangeListeners", "Landroidx/recyclerview/widget/RecyclerView;", "_recyclerView", "value", "l", Constants.HASIDCALL_INDEX_SIG, "isStateViewEnable", Constants.BOOLEAN_VALUE_SIG, "setStateViewEnable", "(Z)V", "m", "Landroid/view/View;", "getStateView", "()Landroid/view/View;", "setStateView", "(Landroid/view/View;)V", "stateView", GoogleApiAvailabilityLight.f29016b, "getAnimationEnable", "setAnimationEnable", "animationEnable", C4921e.f26528e, "isAnimationFirstOnly", "setAnimationFirstOnly", "Lcom/chad/library/adapter4/animation/ItemAnimator;", "p", "Lcom/chad/library/adapter4/animation/ItemAnimator;", "getItemAnimation", "()Lcom/chad/library/adapter4/animation/ItemAnimator;", "(Lcom/chad/library/adapter4/animation/ItemAnimator;)V", "itemAnimation", "mutableItems", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "getContext", "()Landroid/content/Context;", "isEmptyViewHolder", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z", "isEmptyViewEnable", "setEmptyViewEnable", "isEmptyViewEnable$annotations", "()V", "getEmptyView", "setEmptyView", "getEmptyView$annotations", "emptyView", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "Companion", "AnimationType", "OnItemChildClickListener", "OnItemChildLongClickListener", "OnItemClickListener", "OnItemLongClickListener", "OnViewAttachStateChangeListener", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nBaseQuickAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseQuickAdapter.kt\ncom/chad/library/adapter4/BaseQuickAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,831:1\n1855#2,2:832\n1855#2,2:834\n350#2,7:836\n1#3:843\n*S KotlinDebug\n*F\n+ 1 BaseQuickAdapter.kt\ncom/chad/library/adapter4/BaseQuickAdapter\n*L\n290#1:832,2\n297#1:834,2\n431#1:836,7\n*E\n"})
/* loaded from: classes4.dex */
public abstract class BaseQuickAdapter<T, VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    public static final int EMPTY_PAYLOAD = 0;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public List<? extends T> items;

    /* renamed from: e, reason: from kotlin metadata */
    public int mLastPosition;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public OnItemClickListener<T> mOnItemClickListener;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public OnItemLongClickListener<T> mOnItemLongClickListener;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public SparseArray<OnItemChildClickListener<T>> mOnItemChildClickArray;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public SparseArray<OnItemChildLongClickListener<T>> mOnItemChildLongClickArray;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public List<OnViewAttachStateChangeListener> mOnViewAttachStateChangeListeners;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public RecyclerView _recyclerView;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean isStateViewEnable;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public View stateView;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean animationEnable;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean isAnimationFirstOnly;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public ItemAnimator itemAnimation;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: q */
    public static final int f16164q = C2140R.id.BaseQuickAdapter_empty_view;

    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m61528d2 = {"Lcom/chad/library/adapter4/BaseQuickAdapter$AnimationType;", "", "(Ljava/lang/String;I)V", "AlphaIn", "ScaleIn", "SlideInBottom", "SlideInLeft", "SlideInRight", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public enum AnimationType {
        AlphaIn,
        ScaleIn,
        SlideInBottom,
        SlideInLeft,
        SlideInRight
    }

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, m61528d2 = {"Lcom/chad/library/adapter4/BaseQuickAdapter$Companion;", "", "()V", "EMPTY_PAYLOAD", "", "EMPTY_VIEW", "getEMPTY_VIEW", "()I", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getEMPTY_VIEW() {
            return BaseQuickAdapter.f16164q;
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bæ\u0080\u0001\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u00022\u00020\u0002J*\u0010\u0003\u001a\u00020\u00042\u0010\u0010\u0005\u001a\f\u0012\u0004\u0012\u00028\u0002\u0012\u0002\b\u00030\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, m61528d2 = {"Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;", "T", "", "onItemClick", "", "adapter", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "view", "Landroid/view/View;", "position", "", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public interface OnItemChildClickListener<T> {
        void onItemClick(@NotNull BaseQuickAdapter<T, ?> adapter, @NotNull View view, int position);
    }

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bæ\u0080\u0001\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u00022\u00020\u0002J*\u0010\u0003\u001a\u00020\u00042\u0010\u0010\u0005\u001a\f\u0012\u0004\u0012\u00028\u0002\u0012\u0002\b\u00030\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, m61528d2 = {"Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildLongClickListener;", "T", "", "onItemLongClick", "", "adapter", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "view", "Landroid/view/View;", "position", "", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public interface OnItemChildLongClickListener<T> {
        boolean onItemLongClick(@NotNull BaseQuickAdapter<T, ?> adapter, @NotNull View view, int position);
    }

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bæ\u0080\u0001\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u00022\u00020\u0002J*\u0010\u0003\u001a\u00020\u00042\u0010\u0010\u0005\u001a\f\u0012\u0004\u0012\u00028\u0002\u0012\u0002\b\u00030\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, m61528d2 = {"Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;", "T", "", "onClick", "", "adapter", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "view", "Landroid/view/View;", "position", "", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public interface OnItemClickListener<T> {
        void onClick(@NotNull BaseQuickAdapter<T, ?> adapter, @NotNull View view, int position);
    }

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bæ\u0080\u0001\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u00022\u00020\u0002J*\u0010\u0003\u001a\u00020\u00042\u0010\u0010\u0005\u001a\f\u0012\u0004\u0012\u00028\u0002\u0012\u0002\b\u00030\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, m61528d2 = {"Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemLongClickListener;", "T", "", "onLongClick", "", "adapter", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "view", "Landroid/view/View;", "position", "", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public interface OnItemLongClickListener<T> {
        boolean onLongClick(@NotNull BaseQuickAdapter<T, ?> adapter, @NotNull View view, int position);
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, m61528d2 = {"Lcom/chad/library/adapter4/BaseQuickAdapter$OnViewAttachStateChangeListener;", "", "onViewAttachedToWindow", "", "holder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onViewDetachedFromWindow", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public interface OnViewAttachStateChangeListener {
        void onViewAttachedToWindow(@NotNull RecyclerView.ViewHolder holder);

        void onViewDetachedFromWindow(@NotNull RecyclerView.ViewHolder holder);
    }

    @Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AnimationType.values().length];
            try {
                iArr[AnimationType.AlphaIn.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AnimationType.ScaleIn.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AnimationType.SlideInBottom.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AnimationType.SlideInLeft.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AnimationType.SlideInRight.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BaseQuickAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean displayEmptyView$default(BaseQuickAdapter baseQuickAdapter, List list, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: displayEmptyView");
        }
        if ((i & 1) != 0) {
            list = baseQuickAdapter.getItems();
        }
        return baseQuickAdapter.displayEmptyView(list);
    }

    /* renamed from: f */
    public static final void m9681f(RecyclerView.ViewHolder viewHolder, BaseQuickAdapter this$0, View v) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(v, "v");
        this$0.onItemChildClick(v, bindingAdapterPosition);
    }

    /* renamed from: g */
    public static final boolean m9682g(RecyclerView.ViewHolder viewHolder, BaseQuickAdapter this$0, View v) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return false;
        }
        Intrinsics.checkNotNullExpressionValue(v, "v");
        return this$0.onItemChildLongClick(v, bindingAdapterPosition);
    }

    @Deprecated(message = "使用 stateView", replaceWith = @ReplaceWith(expression = "stateView", imports = {}))
    public static /* synthetic */ void getEmptyView$annotations() {
    }

    /* renamed from: h */
    public static final void m9683h(RecyclerView.ViewHolder viewHolder, BaseQuickAdapter this$0, View v) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(v, "v");
        this$0.onItemClick(v, bindingAdapterPosition);
    }

    /* renamed from: i */
    public static final boolean m9684i(RecyclerView.ViewHolder viewHolder, BaseQuickAdapter this$0, View v) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return false;
        }
        Intrinsics.checkNotNullExpressionValue(v, "v");
        return this$0.onItemLongClick(v, bindingAdapterPosition);
    }

    @Deprecated(message = "使用 isStateViewEnable", replaceWith = @ReplaceWith(expression = "isStateViewEnable", imports = {}))
    public static /* synthetic */ void isEmptyViewEnable$annotations() {
    }

    public void add(@IntRange(from = 0) int position, @NotNull T data) {
        Intrinsics.checkNotNullParameter(data, "data");
        if (position <= getItems().size() && position >= 0) {
            if (displayEmptyView$default(this, null, 1, null)) {
                notifyItemRemoved(0);
            }
            m9685j().add(position, data);
            notifyItemInserted(position);
            return;
        }
        throw new IndexOutOfBoundsException("position: " + position + ". size:" + getItems().size());
    }

    public void addAll(@IntRange(from = 0) int position, @NotNull Collection<? extends T> collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        if (collection.isEmpty()) {
            return;
        }
        if (position <= getItems().size() && position >= 0) {
            if (displayEmptyView$default(this, null, 1, null)) {
                notifyItemRemoved(0);
            }
            if (m9685j().addAll(position, collection)) {
                notifyItemRangeInserted(position, collection.size());
                return;
            }
            return;
        }
        throw new IndexOutOfBoundsException("position: " + position + ". size:" + getItems().size());
    }

    @NotNull
    public final BaseQuickAdapter<T, VH> addOnItemChildClickListener(@IdRes int id, @NotNull OnItemChildClickListener<T> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        SparseArray<OnItemChildClickListener<T>> sparseArray = this.mOnItemChildClickArray;
        if (sparseArray == null) {
            sparseArray = new SparseArray<>(2);
        }
        sparseArray.put(id, listener);
        this.mOnItemChildClickArray = sparseArray;
        return this;
    }

    @NotNull
    public final BaseQuickAdapter<T, VH> addOnItemChildLongClickListener(@IdRes int id, @NotNull OnItemChildLongClickListener<T> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        SparseArray<OnItemChildLongClickListener<T>> sparseArray = this.mOnItemChildLongClickArray;
        if (sparseArray == null) {
            sparseArray = new SparseArray<>(2);
        }
        sparseArray.put(id, listener);
        this.mOnItemChildLongClickArray = sparseArray;
        return this;
    }

    @NotNull
    public final BaseQuickAdapter<T, VH> addOnViewAttachStateChangeListener(@NotNull OnViewAttachStateChangeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        List<OnViewAttachStateChangeListener> list = this.mOnViewAttachStateChangeListeners;
        if (list == null) {
            list = new ArrayList<>();
        }
        if (!list.contains(listener)) {
            list.add(listener);
        }
        this.mOnViewAttachStateChangeListeners = list;
        return this;
    }

    public void bindViewClickListener(@NotNull final VH viewHolder, int viewType) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (this.mOnItemClickListener != null) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zn
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseQuickAdapter.m9683h(RecyclerView.ViewHolder.this, this, view);
                }
            });
        }
        if (this.mOnItemLongClickListener != null) {
            viewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.sunia.HTREnginev2.ao
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean m9684i;
                    m9684i = BaseQuickAdapter.m9684i(RecyclerView.ViewHolder.this, this, view);
                    return m9684i;
                }
            });
        }
        SparseArray<OnItemChildClickListener<T>> sparseArray = this.mOnItemChildClickArray;
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i = 0; i < size; i++) {
                View findViewById = viewHolder.itemView.findViewById(sparseArray.keyAt(i));
                if (findViewById != null) {
                    Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById<View>(id)");
                    findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.bo
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            BaseQuickAdapter.m9681f(RecyclerView.ViewHolder.this, this, view);
                        }
                    });
                }
            }
        }
        SparseArray<OnItemChildLongClickListener<T>> sparseArray2 = this.mOnItemChildLongClickArray;
        if (sparseArray2 != null) {
            int size2 = sparseArray2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                View findViewById2 = viewHolder.itemView.findViewById(sparseArray2.keyAt(i2));
                if (findViewById2 != null) {
                    Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById<View>(id)");
                    findViewById2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.sunia.HTREnginev2.co
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            boolean m9682g;
                            m9682g = BaseQuickAdapter.m9682g(RecyclerView.ViewHolder.this, this, view);
                            return m9682g;
                        }
                    });
                }
            }
        }
    }

    public final void clearOnViewAttachStateChangeListener() {
        List<OnViewAttachStateChangeListener> list = this.mOnViewAttachStateChangeListeners;
        if (list != null) {
            list.clear();
        }
    }

    public final boolean displayEmptyView(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (this.stateView == null || !this.isStateViewEnable) {
            return false;
        }
        return list.isEmpty();
    }

    public final boolean getAnimationEnable() {
        return this.animationEnable;
    }

    @NotNull
    public final Context getContext() {
        Context context = getRecyclerView().getContext();
        Intrinsics.checkNotNullExpressionValue(context, "recyclerView.context");
        return context;
    }

    @Nullable
    /* renamed from: getEmptyView, reason: from getter */
    public final View getStateView() {
        return this.stateView;
    }

    @Nullable
    public final T getItem(@IntRange(from = 0) int position) {
        Object orNull;
        orNull = CollectionsKt___CollectionsKt.getOrNull(getItems(), position);
        return (T) orNull;
    }

    @Nullable
    public final ItemAnimator getItemAnimation() {
        return this.itemAnimation;
    }

    public int getItemCount(@NotNull List<? extends T> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        return items.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int position) {
        return position;
    }

    public int getItemViewType(int position, @NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return 0;
    }

    @NotNull
    public List<T> getItems() {
        return this.items;
    }

    @Nullable
    public final OnItemClickListener<T> getOnItemClickListener() {
        return this.mOnItemClickListener;
    }

    @Nullable
    public final OnItemLongClickListener<T> getOnItemLongClickListener() {
        return this.mOnItemLongClickListener;
    }

    @NotNull
    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this._recyclerView;
        if (recyclerView == null) {
            throw new IllegalStateException("Please get it after onAttachedToRecyclerView()".toString());
        }
        Intrinsics.checkNotNull(recyclerView);
        return recyclerView;
    }

    @Nullable
    public final View getStateView() {
        return this.stateView;
    }

    /* renamed from: isAnimationFirstOnly, reason: from getter */
    public final boolean getIsAnimationFirstOnly() {
        return this.isAnimationFirstOnly;
    }

    /* renamed from: isEmptyViewEnable, reason: from getter */
    public final boolean getIsStateViewEnable() {
        return this.isStateViewEnable;
    }

    public final boolean isEmptyViewHolder(@NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "<this>");
        return viewHolder instanceof StateLayoutVH;
    }

    public boolean isFullSpanItem(int itemType) {
        return itemType == f16164q;
    }

    public final boolean isStateViewEnable() {
        return this.isStateViewEnable;
    }

    public final int itemIndexOfFirst(@NotNull T item) {
        Intrinsics.checkNotNullParameter(item, "item");
        Iterator<T> it2 = getItems().iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (Intrinsics.areEqual(item, it2.next())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: j */
    public final List<T> m9685j() {
        List<T> mutableList;
        List<T> items = getItems();
        if (items instanceof ArrayList) {
            List<T> items2 = getItems();
            Intrinsics.checkNotNull(items2, "null cannot be cast to non-null type java.util.ArrayList<T of com.chad.library.adapter4.BaseQuickAdapter>");
            return (ArrayList) items2;
        }
        if (TypeIntrinsics.isMutableList(items)) {
            List<T> items3 = getItems();
            Intrinsics.checkNotNull(items3, "null cannot be cast to non-null type kotlin.collections.MutableList<T of com.chad.library.adapter4.BaseQuickAdapter>");
            return TypeIntrinsics.asMutableList(items3);
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
        setItems(mutableList);
        return mutableList;
    }

    /* renamed from: k */
    public final void m9686k(RecyclerView.ViewHolder holder) {
        if (this.animationEnable) {
            if (!this.isAnimationFirstOnly || holder.getLayoutPosition() > this.mLastPosition) {
                ItemAnimator itemAnimator = this.itemAnimation;
                if (itemAnimator == null) {
                    itemAnimator = new AlphaInAnimation(0L, 0.0f, 3, null);
                }
                View view = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
                startItemAnimator(itemAnimator.animator(view), holder);
                this.mLastPosition = holder.getLayoutPosition();
            }
        }
    }

    public void move(int fromPosition, int toPosition) {
        if (fromPosition >= 0 && fromPosition < getItems().size()) {
            if (toPosition >= 0 && toPosition < getItems().size()) {
                m9685j().add(toPosition, m9685j().remove(fromPosition));
                notifyItemMoved(fromPosition, toPosition);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onAttachedToRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this._recyclerView = recyclerView;
    }

    public abstract void onBindViewHolder(@NotNull VH holder, int position, @Nullable T item);

    public void onBindViewHolder(@NotNull VH holder, int position, @Nullable T item, @NotNull List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        onBindViewHolder((BaseQuickAdapter<T, VH>) holder, position, (int) item);
    }

    @NotNull
    public abstract VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public final RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (viewType == f16164q) {
            return new StateLayoutVH(parent, this.stateView, null, 4, null);
        }
        Context context = parent.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "parent.context");
        VH onCreateViewHolder = onCreateViewHolder(context, parent, viewType);
        bindViewClickListener(onCreateViewHolder, viewType);
        return onCreateViewHolder;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onDetachedFromRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this._recyclerView = null;
    }

    public void onItemChildClick(@NotNull View v, int position) {
        OnItemChildClickListener<T> onItemChildClickListener;
        Intrinsics.checkNotNullParameter(v, "v");
        SparseArray<OnItemChildClickListener<T>> sparseArray = this.mOnItemChildClickArray;
        if (sparseArray == null || (onItemChildClickListener = sparseArray.get(v.getId())) == null) {
            return;
        }
        onItemChildClickListener.onItemClick(this, v, position);
    }

    public boolean onItemChildLongClick(@NotNull View v, int position) {
        OnItemChildLongClickListener<T> onItemChildLongClickListener;
        Intrinsics.checkNotNullParameter(v, "v");
        SparseArray<OnItemChildLongClickListener<T>> sparseArray = this.mOnItemChildLongClickArray;
        if (sparseArray == null || (onItemChildLongClickListener = sparseArray.get(v.getId())) == null) {
            return false;
        }
        return onItemChildLongClickListener.onItemLongClick(this, v, position);
    }

    public void onItemClick(@NotNull View v, int position) {
        Intrinsics.checkNotNullParameter(v, "v");
        OnItemClickListener<T> onItemClickListener = this.mOnItemClickListener;
        if (onItemClickListener != null) {
            onItemClickListener.onClick(this, v, position);
        }
    }

    public boolean onItemLongClick(@NotNull View v, int position) {
        Intrinsics.checkNotNullParameter(v, "v");
        OnItemLongClickListener<T> onItemLongClickListener = this.mOnItemLongClickListener;
        if (onItemLongClickListener != null) {
            return onItemLongClickListener.onLongClick(this, v, position);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onViewAttachedToWindow(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        if ((holder instanceof StateLayoutVH) || isFullSpanItem(getItemViewType(holder.getBindingAdapterPosition()))) {
            AdapterUtilsKt.asStaggeredGridFullSpan(holder);
        } else {
            m9686k(holder);
        }
        List<OnViewAttachStateChangeListener> list = this.mOnViewAttachStateChangeListeners;
        if (list != null) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                ((OnViewAttachStateChangeListener) it2.next()).onViewAttachedToWindow(holder);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onViewDetachedFromWindow(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        List<OnViewAttachStateChangeListener> list = this.mOnViewAttachStateChangeListeners;
        if (list != null) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                ((OnViewAttachStateChangeListener) it2.next()).onViewDetachedFromWindow(holder);
            }
        }
    }

    public void remove(@NotNull T data) {
        Intrinsics.checkNotNullParameter(data, "data");
        int indexOf = getItems().indexOf(data);
        if (indexOf == -1) {
            return;
        }
        removeAt(indexOf);
    }

    public void removeAt(@IntRange(from = 0) int position) {
        if (position < getItems().size()) {
            m9685j().remove(position);
            notifyItemRemoved(position);
            if (displayEmptyView$default(this, null, 1, null)) {
                notifyItemInserted(0);
                return;
            }
            return;
        }
        throw new IndexOutOfBoundsException("position: " + position + ". size:" + getItems().size());
    }

    public void removeAtRange(@NotNull kotlin.ranges.IntRange range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range.isEmpty()) {
            return;
        }
        if (range.getFirst() >= getItems().size()) {
            throw new IndexOutOfBoundsException("Range first position: " + range.getFirst() + " - last position: " + range.getLast() + ". size:" + getItems().size());
        }
        int size = range.getLast() >= getItems().size() ? getItems().size() - 1 : range.getLast();
        int first = range.getFirst();
        if (first <= size) {
            int i = size;
            while (true) {
                m9685j().remove(i);
                if (i == first) {
                    break;
                } else {
                    i--;
                }
            }
        }
        notifyItemRangeRemoved(range.getFirst(), (size - range.getFirst()) + 1);
        if (displayEmptyView$default(this, null, 1, null)) {
            notifyItemInserted(0);
        }
    }

    @NotNull
    public final BaseQuickAdapter<T, VH> removeOnItemChildClickListener(@IdRes int id) {
        SparseArray<OnItemChildClickListener<T>> sparseArray = this.mOnItemChildClickArray;
        if (sparseArray != null) {
            sparseArray.remove(id);
        }
        return this;
    }

    @NotNull
    public final BaseQuickAdapter<T, VH> removeOnItemChildLongClickListener(@IdRes int id) {
        SparseArray<OnItemChildLongClickListener<T>> sparseArray = this.mOnItemChildLongClickArray;
        if (sparseArray != null) {
            sparseArray.remove(id);
        }
        return this;
    }

    public final void removeOnViewAttachStateChangeListener(@NotNull OnViewAttachStateChangeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        List<OnViewAttachStateChangeListener> list = this.mOnViewAttachStateChangeListeners;
        if (list != null) {
            list.remove(listener);
        }
    }

    public void set(@IntRange(from = 0) int position, @NotNull T data) {
        Intrinsics.checkNotNullParameter(data, "data");
        if (position < getItems().size()) {
            m9685j().set(position, data);
            notifyItemChanged(position);
            return;
        }
        throw new IndexOutOfBoundsException("position: " + position + ". size:" + getItems().size());
    }

    public final void setAnimationEnable(boolean z) {
        this.animationEnable = z;
    }

    public final void setAnimationFirstOnly(boolean z) {
        this.isAnimationFirstOnly = z;
    }

    public final void setEmptyView(@Nullable View view) {
        setStateView(view);
    }

    public final void setEmptyViewEnable(boolean z) {
        setStateViewEnable(z);
    }

    @Deprecated(message = "使用 setStateViewLayout()", replaceWith = @ReplaceWith(expression = "setStateViewLayout(context, layoutResId)", imports = {}))
    public final void setEmptyViewLayout(@NotNull Context context, @LayoutRes int layoutResId) {
        Intrinsics.checkNotNullParameter(context, "context");
        setStateViewLayout(context, layoutResId);
    }

    public final void setItemAnimation(@Nullable ItemAnimator itemAnimator) {
        this.animationEnable = true;
        this.itemAnimation = itemAnimator;
    }

    public void setItems(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.items = list;
    }

    @NotNull
    public final BaseQuickAdapter<T, VH> setOnItemClickListener(@Nullable OnItemClickListener<T> listener) {
        this.mOnItemClickListener = listener;
        return this;
    }

    @NotNull
    public final BaseQuickAdapter<T, VH> setOnItemLongClickListener(@Nullable OnItemLongClickListener<T> listener) {
        this.mOnItemLongClickListener = listener;
        return this;
    }

    public final void setStateView(@Nullable View view) {
        boolean displayEmptyView$default = displayEmptyView$default(this, null, 1, null);
        this.stateView = view;
        boolean displayEmptyView$default2 = displayEmptyView$default(this, null, 1, null);
        if (displayEmptyView$default && !displayEmptyView$default2) {
            notifyItemRemoved(0);
            return;
        }
        if (displayEmptyView$default2 && !displayEmptyView$default) {
            notifyItemInserted(0);
        } else if (displayEmptyView$default && displayEmptyView$default2) {
            notifyItemChanged(0, 0);
        }
    }

    public final void setStateViewEnable(boolean z) {
        boolean displayEmptyView$default = displayEmptyView$default(this, null, 1, null);
        this.isStateViewEnable = z;
        boolean displayEmptyView$default2 = displayEmptyView$default(this, null, 1, null);
        if (displayEmptyView$default && !displayEmptyView$default2) {
            notifyItemRemoved(0);
            return;
        }
        if (displayEmptyView$default2 && !displayEmptyView$default) {
            notifyItemInserted(0);
        } else if (displayEmptyView$default && displayEmptyView$default2) {
            notifyItemChanged(0, 0);
        }
    }

    public final void setStateViewLayout(@NotNull Context context, @LayoutRes int layoutResId) {
        Intrinsics.checkNotNullParameter(context, "context");
        setStateView(LayoutInflater.from(context).inflate(layoutResId, (ViewGroup) new FrameLayout(context), false));
    }

    public void startItemAnimator(@NotNull Animator anim, @NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(anim, "anim");
        Intrinsics.checkNotNullParameter(holder, "holder");
        anim.start();
    }

    public void submitList(@Nullable List<? extends T> list) {
        if (list == null) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        this.mLastPosition = -1;
        boolean displayEmptyView$default = displayEmptyView$default(this, null, 1, null);
        boolean displayEmptyView = displayEmptyView(list);
        if (displayEmptyView$default && !displayEmptyView) {
            setItems(list);
            notifyItemRemoved(0);
            notifyItemRangeInserted(0, list.size());
        } else if (displayEmptyView && !displayEmptyView$default) {
            notifyItemRangeRemoved(0, getItems().size());
            setItems(list);
            notifyItemInserted(0);
        } else if (displayEmptyView$default && displayEmptyView) {
            setItems(list);
            notifyItemChanged(0, 0);
        } else {
            setItems(list);
            notifyDataSetChanged();
        }
    }

    public void swap(int fromPosition, int toPosition) {
        if (fromPosition >= 0 && fromPosition < getItems().size()) {
            if (toPosition >= 0 && toPosition < getItems().size()) {
                Collections.swap(getItems(), fromPosition, toPosition);
                notifyItemChanged(fromPosition);
                notifyItemChanged(toPosition);
            }
        }
    }

    public /* synthetic */ BaseQuickAdapter(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        if (displayEmptyView$default(this, null, 1, null)) {
            return 1;
        }
        return getItemCount(getItems());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int position) {
        return displayEmptyView$default(this, null, 1, null) ? f16164q : getItemViewType(position, getItems());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof StateLayoutVH) {
            ((StateLayoutVH) holder).changeStateView(this.stateView);
        } else {
            onBindViewHolder((BaseQuickAdapter<T, VH>) holder, position, (int) getItem(position));
        }
    }

    public final void setItemAnimation(@NotNull AnimationType animationType) {
        ItemAnimator alphaInAnimation;
        Intrinsics.checkNotNullParameter(animationType, "animationType");
        int i = WhenMappings.$EnumSwitchMapping$0[animationType.ordinal()];
        if (i == 1) {
            alphaInAnimation = new AlphaInAnimation(0L, 0.0f, 3, null);
        } else if (i == 2) {
            alphaInAnimation = new ScaleInAnimation(0L, 0.0f, 3, null);
        } else if (i == 3) {
            alphaInAnimation = new SlideInBottomAnimation(0L, 1, null);
        } else if (i == 4) {
            alphaInAnimation = new SlideInLeftAnimation(0L, 1, null);
        } else {
            if (i != 5) {
                throw new NoWhenBranchMatchedException();
            }
            alphaInAnimation = new SlideInRightAnimation(0L, 1, null);
        }
        setItemAnimation(alphaInAnimation);
    }

    public BaseQuickAdapter(@NotNull List<? extends T> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.items = items;
        this.mLastPosition = -1;
        this.isAnimationFirstOnly = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int position, @NotNull List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBindViewHolder(holder, position);
        } else if (holder instanceof StateLayoutVH) {
            ((StateLayoutVH) holder).changeStateView(this.stateView);
        } else {
            onBindViewHolder(holder, position, getItem(position), payloads);
        }
    }

    public void add(@NotNull T data) {
        Intrinsics.checkNotNullParameter(data, "data");
        if (displayEmptyView$default(this, null, 1, null)) {
            notifyItemRemoved(0);
        }
        if (m9685j().add(data)) {
            notifyItemInserted(getItems().size() - 1);
        }
    }

    public void addAll(@NotNull Collection<? extends T> collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        if (collection.isEmpty()) {
            return;
        }
        if (displayEmptyView$default(this, null, 1, null)) {
            notifyItemRemoved(0);
        }
        int size = getItems().size();
        if (m9685j().addAll(collection)) {
            notifyItemRangeInserted(size, collection.size());
        }
    }
}
