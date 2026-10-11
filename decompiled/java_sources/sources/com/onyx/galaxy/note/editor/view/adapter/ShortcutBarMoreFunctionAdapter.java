package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseMultiItemAdapter;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.databinding.ItemShortcutBarMoreFunctionAudioBinding;
import com.onyx.galaxy.note.databinding.ItemShortcutBarMoreFunctionAudioSetBinding;
import com.onyx.galaxy.note.databinding.ItemShortcutBarMoreFunctionNormalBinding;
import com.onyx.galaxy.note.editor.data.ShortcutType;
import com.onyx.galaxy.note.editor.view.adapter.ShortcutBarMoreFunctionAdapter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0015\u0018\u0000 %2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0004&'%(B\u000f\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b#\u0010$J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0005\u001a\u00020\u0003H\u0002J\b\u0010\u0006\u001a\u00020\u0003H\u0002J\b\u0010\u0007\u001a\u00020\u0003H\u0002J\b\u0010\b\u001a\u00020\u0003H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\"\u0010\u0010\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u001d\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u000f\u001a\u0004\b\u001d\u0010\u0011\"\u0004\b\u001e\u0010\u0013R\"\u0010\"\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u000f\u001a\u0004\b \u0010\u0011\"\u0004\b!\u0010\u0013¨\u0006)"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;", "Lcom/chad/library/adapter4/BaseMultiItemAdapter;", "Lcom/onyx/galaxy/note/editor/data/ShortcutType;", "", "r", "p", "q", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "t", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "u", Constants.HASIDCALL_INDEX_SIG, "isRecording", Constants.BOOLEAN_VALUE_SIG, "setRecording", "(Z)V", "", "v", "J", "getRecordDuration", "()J", "setRecordDuration", "(J)V", "recordDuration", "w", "isPreviewAudioSet", "setPreviewAudioSet", "x", "getHasNewRecordTip", "setHasNewRecordTip", "hasNewRecordTip", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "Companion", "AudioSetViewHolder", "AudioViewHolder", "NormalViewHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ShortcutBarMoreFunctionAdapter extends BaseMultiItemAdapter<ShortcutType> {

    /* renamed from: A */
    public static final int f59603A = 3;

    @NotNull
    public static final String PAY_LOAD_UPDATE_RECORD_DUR = "pay_load_update_record_dur";

    /* renamed from: y */
    public static final int f59604y = 1;

    /* renamed from: z */
    public static final int f59605z = 2;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: u, reason: from kotlin metadata */
    public boolean isRecording;

    /* renamed from: v, reason: from kotlin metadata */
    public long recordDuration;

    /* renamed from: w, reason: from kotlin metadata */
    public boolean isPreviewAudioSet;

    /* renamed from: x, reason: from kotlin metadata */
    public boolean hasNewRecordTip;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioSetViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioSetBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioSetBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioSetBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioSetBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class AudioSetViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemShortcutBarMoreFunctionAudioSetBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AudioSetViewHolder(@NotNull ItemShortcutBarMoreFunctionAudioSetBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemShortcutBarMoreFunctionAudioSetBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class AudioViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemShortcutBarMoreFunctionAudioBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AudioViewHolder(@NotNull ItemShortcutBarMoreFunctionAudioBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemShortcutBarMoreFunctionAudioBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$NormalViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionNormalBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionNormalBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionNormalBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionNormalBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class NormalViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemShortcutBarMoreFunctionNormalBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NormalViewHolder(@NotNull ItemShortcutBarMoreFunctionNormalBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemShortcutBarMoreFunctionNormalBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ShortcutType.values().length];
            try {
                iArr[ShortcutType.SHORTCUT_AUDIO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_AUDIO_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortcutBarMoreFunctionAdapter(@NotNull EditorBundle editorBundle) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        m47659p();
        m47661r();
    }

    /* renamed from: s */
    public static final int m47656s(int i, List list) {
        Intrinsics.checkNotNullParameter(list, "list");
        int i2 = WhenMappings.$EnumSwitchMapping$0[((ShortcutType) list.get(i)).ordinal()];
        if (i2 != 1) {
            return i2 != 2 ? 2 : 3;
        }
        return 1;
    }

    public final boolean getHasNewRecordTip() {
        return this.hasNewRecordTip;
    }

    public final long getRecordDuration() {
        return this.recordDuration;
    }

    /* renamed from: isPreviewAudioSet, reason: from getter */
    public final boolean getIsPreviewAudioSet() {
        return this.isPreviewAudioSet;
    }

    /* renamed from: isRecording, reason: from getter */
    public final boolean getIsRecording() {
        return this.isRecording;
    }

    /* renamed from: n */
    public final void m47657n() {
        addItemType(1, new BaseMultiItemAdapter.OnMultiItemAdapterListener<ShortcutType, AudioViewHolder>() { // from class: com.onyx.galaxy.note.editor.view.adapter.ShortcutBarMoreFunctionAdapter$addAudioItem$1
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public /* bridge */ /* synthetic */ void onBind(ShortcutBarMoreFunctionAdapter.AudioViewHolder audioViewHolder, int i, ShortcutType shortcutType, List list) {
                onBind2(audioViewHolder, i, shortcutType, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public ShortcutBarMoreFunctionAdapter.AudioViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemShortcutBarMoreFunctionAudioBinding inflate = ItemShortcutBarMoreFunctionAudioBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new ShortcutBarMoreFunctionAdapter.AudioViewHolder(inflate);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull ShortcutBarMoreFunctionAdapter.AudioViewHolder holder, int position, @Nullable ShortcutType item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                if (item == null) {
                    return;
                }
                ItemShortcutBarMoreFunctionAudioBinding viewBinding = holder.getViewBinding();
                ShortcutBarMoreFunctionAdapter shortcutBarMoreFunctionAdapter = ShortcutBarMoreFunctionAdapter.this;
                Group groupPlay = holder.getViewBinding().groupPlay;
                Intrinsics.checkNotNullExpressionValue(groupPlay, "groupPlay");
                groupPlay.setVisibility(shortcutBarMoreFunctionAdapter.getIsRecording() ? 4 : 0);
                Group groupRecord = holder.getViewBinding().groupRecord;
                Intrinsics.checkNotNullExpressionValue(groupRecord, "groupRecord");
                groupRecord.setVisibility(shortcutBarMoreFunctionAdapter.getIsRecording() ^ true ? 4 : 0);
                viewBinding.tvTitleRecord.setText(DateTimeUtil.formatDurationSecondRoundUp$default(DateTimeUtil.INSTANCE, shortcutBarMoreFunctionAdapter.getRecordDuration(), false, null, null, 12, null));
                viewBinding.ivIcon.setImageResource(item.getIconRes());
                viewBinding.tvTitle.setText(ResManager.INSTANCE.getString(item.getTitleRes()));
            }

            /* renamed from: onBind, reason: avoid collision after fix types in other method */
            public void onBind2(@NotNull ShortcutBarMoreFunctionAdapter.AudioViewHolder holder, int position, @Nullable ShortcutType item, @NotNull List<? extends Object> payloads) {
                Object first;
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNullParameter(payloads, "payloads");
                if (!payloads.isEmpty()) {
                    first = CollectionsKt___CollectionsKt.first(payloads);
                    if ((first instanceof Map) && Intrinsics.areEqual((Boolean) ((Map) first).get(ShortcutBarMoreFunctionAdapter.PAY_LOAD_UPDATE_RECORD_DUR), Boolean.TRUE)) {
                        String formatDurationSecondRoundUp$default = DateTimeUtil.formatDurationSecondRoundUp$default(DateTimeUtil.INSTANCE, ShortcutBarMoreFunctionAdapter.this.getRecordDuration(), false, null, null, 12, null);
                        Group groupPlay = holder.getViewBinding().groupPlay;
                        Intrinsics.checkNotNullExpressionValue(groupPlay, "groupPlay");
                        groupPlay.setVisibility(ShortcutBarMoreFunctionAdapter.this.getIsRecording() ? 4 : 0);
                        Group groupRecord = holder.getViewBinding().groupRecord;
                        Intrinsics.checkNotNullExpressionValue(groupRecord, "groupRecord");
                        groupRecord.setVisibility(ShortcutBarMoreFunctionAdapter.this.getIsRecording() ^ true ? 4 : 0);
                        holder.getViewBinding().tvTitleRecord.setText(formatDurationSecondRoundUp$default);
                        return;
                    }
                    return;
                }
                onBind(holder, position, item);
            }
        });
    }

    /* renamed from: o */
    public final void m47658o() {
        addItemType(3, new BaseMultiItemAdapter.OnMultiItemAdapterListener<ShortcutType, AudioSetViewHolder>() { // from class: com.onyx.galaxy.note.editor.view.adapter.ShortcutBarMoreFunctionAdapter$addAudioSetItem$1
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull ShortcutBarMoreFunctionAdapter.AudioSetViewHolder holder, int position, @Nullable ShortcutType item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                if (item == null) {
                    return;
                }
                boolean isPreviewAudioSet = ShortcutBarMoreFunctionAdapter.this.getIsPreviewAudioSet();
                ItemShortcutBarMoreFunctionAudioSetBinding viewBinding = holder.getViewBinding();
                ShortcutBarMoreFunctionAdapter shortcutBarMoreFunctionAdapter = ShortcutBarMoreFunctionAdapter.this;
                TintImageView ivIcon = viewBinding.ivIcon;
                Intrinsics.checkNotNullExpressionValue(ivIcon, "ivIcon");
                ivIcon.setVisibility(isPreviewAudioSet ? 4 : 0);
                TintImageView ivIconPreview = viewBinding.ivIconPreview;
                Intrinsics.checkNotNullExpressionValue(ivIconPreview, "ivIconPreview");
                ivIconPreview.setVisibility(isPreviewAudioSet ^ true ? 4 : 0);
                viewBinding.tvTitle.setText(ResManager.INSTANCE.getString(item.getTitleRes()));
                TintImageView ivIconNewTip = viewBinding.ivIconNewTip;
                Intrinsics.checkNotNullExpressionValue(ivIconNewTip, "ivIconNewTip");
                ivIconNewTip.setVisibility(shortcutBarMoreFunctionAdapter.getHasNewRecordTip() ? 0 : 8);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public ShortcutBarMoreFunctionAdapter.AudioSetViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemShortcutBarMoreFunctionAudioSetBinding inflate = ItemShortcutBarMoreFunctionAudioSetBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new ShortcutBarMoreFunctionAdapter.AudioSetViewHolder(inflate);
            }
        });
    }

    /* renamed from: p */
    public final void m47659p() {
        m47660q();
        m47657n();
        m47658o();
    }

    /* renamed from: q */
    public final void m47660q() {
        addItemType(2, new BaseMultiItemAdapter.OnMultiItemAdapterListener<ShortcutType, NormalViewHolder>() { // from class: com.onyx.galaxy.note.editor.view.adapter.ShortcutBarMoreFunctionAdapter$addNormalItem$1

            @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
            /* loaded from: classes9.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[ShortcutType.values().length];
                    try {
                        iArr[ShortcutType.SHORTCUT_ENCRYPTION.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* renamed from: a */
            public final Pair<String, Integer> m47662a(ShortcutType shortcutType) {
                EditorBundle editorBundle;
                if (WhenMappings.$EnumSwitchMapping$0[shortcutType.ordinal()] != 1) {
                    return ShortcutType.INSTANCE.getShortcutModeData(shortcutType);
                }
                ShortcutType.Companion companion = ShortcutType.INSTANCE;
                editorBundle = ShortcutBarMoreFunctionAdapter.this.editorBundle;
                return companion.getEncryptionData(EditorBundleKt.noteBundle(editorBundle).getNoteDoc().getNoteModel().hasEncryption());
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull ShortcutBarMoreFunctionAdapter.NormalViewHolder holder, int position, @Nullable ShortcutType item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                if (item == null) {
                    return;
                }
                Pair<String, Integer> m47662a = m47662a(item);
                ItemShortcutBarMoreFunctionNormalBinding viewBinding = holder.getViewBinding();
                viewBinding.ivIcon.setImageResource(m47662a.getSecond().intValue());
                viewBinding.tvTitle.setText(m47662a.getFirst());
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public ShortcutBarMoreFunctionAdapter.NormalViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemShortcutBarMoreFunctionNormalBinding inflate = ItemShortcutBarMoreFunctionNormalBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new ShortcutBarMoreFunctionAdapter.NormalViewHolder(inflate);
            }
        });
    }

    /* renamed from: r */
    public final void m47661r() {
        onItemViewType(new BaseMultiItemAdapter.OnItemViewTypeListener() { // from class: com.sunia.HTREnginev2.yom
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnItemViewTypeListener
            public final int onItemViewType(int i, List list) {
                int m47656s;
                m47656s = ShortcutBarMoreFunctionAdapter.m47656s(i, list);
                return m47656s;
            }
        });
    }

    public final void setHasNewRecordTip(boolean z) {
        this.hasNewRecordTip = z;
    }

    public final void setPreviewAudioSet(boolean z) {
        this.isPreviewAudioSet = z;
    }

    public final void setRecordDuration(long j) {
        this.recordDuration = j;
    }

    public final void setRecording(boolean z) {
        this.isRecording = z;
    }
}
