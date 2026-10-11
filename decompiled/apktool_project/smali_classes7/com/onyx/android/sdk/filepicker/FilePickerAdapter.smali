.class public final Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerDiffCallback;,
        Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
        "Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilePickerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilePickerAdapter.kt\ncom/onyx/android/sdk/filepicker/FilePickerAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,75:1\n262#2,2:76\n*S KotlinDebug\n*F\n+ 1 FilePickerAdapter.kt\ncom/onyx/android/sdk/filepicker/FilePickerAdapter\n*L\n33#1:76,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u0015\u0016B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001c\u0010\u0007\u001a\u00020\u00052\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\nH\u0016R$\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
        "Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;",
        "Lkotlin/Function1;",
        "",
        "callback",
        "setCallBack",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateViewHolder",
        "holder",
        "position",
        "onBindViewHolder",
        "f",
        "Lkotlin/jvm/functions/Function1;",
        "itemCallback",
        "<init>",
        "()V",
        "FilePickerDiffCallback",
        "FilePickerHolder",
        "sdk-imagepicker_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFilePickerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilePickerAdapter.kt\ncom/onyx/android/sdk/filepicker/FilePickerAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,75:1\n262#2,2:76\n*S KotlinDebug\n*F\n+ 1 FilePickerAdapter.kt\ncom/onyx/android/sdk/filepicker/FilePickerAdapter\n*L\n33#1:76,2\n*E\n"
    }
.end annotation


# instance fields
.field public f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerDiffCallback;

    invoke-direct {v0}, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerDiffCallback;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;Lcom/onyx/android/sdk/filepicker/DocumentBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;->c(Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;Lcom/onyx/android/sdk/filepicker/DocumentBean;Landroid/view/View;)V

    return-void
.end method

.method public static final c(Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;Lcom/onyx/android/sdk/filepicker/DocumentBean;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;->f:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;->onBindViewHolder(Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;I)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/filepicker/DocumentBean;

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;->getCheckView()Landroid/widget/CheckBox;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getMultiEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 4
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;->getCheckView()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getSelectFile()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$onBindViewHolder$1;

    invoke-direct {v2, p2}, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$onBindViewHolder$1;-><init>(Lcom/onyx/android/sdk/filepicker/DocumentBean;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;->getTvTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p2}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getTime()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p2}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 9
    sget-object v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/imagepicker/R$integer;->time_milliseconds:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v0, v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_3()Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->format(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;->getTvTime()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p2}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getSize()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p2}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 13
    sget-object v2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(J)Ljava/lang/String;

    move-result-object v0

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;->getTvSize()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p2}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getDocumentType()Lcom/onyx/android/sdk/filepicker/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/DocumentType;->getDrawableRes()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 16
    invoke-virtual {p1}, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;->getIvFileIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/sunia/HTREnginev2/ihg;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/ihg;-><init>(Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;Lcom/onyx/android/sdk/filepicker/DocumentBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/onyx/android/sdk/imagepicker/R$layout;->item_file_pciker:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter$FilePickerHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final setCallBack(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method
