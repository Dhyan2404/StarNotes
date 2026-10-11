.class public final Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPageMarginAdjustDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageMarginAdjustDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,638:1\n1#2:639\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c7\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0008\u0006*\u0001p\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010M\u001a\u00020J\u0012\u0006\u0010S\u001a\u00020N\u00a2\u0006\u0004\u0008s\u0010tJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u0005\u001a\u00020\u0003H\u0002J\u0008\u0010\u0006\u001a\u00020\u0003H\u0002J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\rH\u0002J\u0018\u0010\u0011\u001a\u00020\n2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000fH\u0002J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0008\u0010\u0015\u001a\u00020\u0003H\u0002J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0012\u0010\u001b\u001a\u00020\u00032\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0002J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0019H\u0002J\u0008\u0010\u001e\u001a\u00020\u0003H\u0002J\u0008\u0010\u001f\u001a\u00020\u0003H\u0002J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010!\u001a\u00020 H\u0002J\u0008\u0010#\u001a\u00020\u0003H\u0002J\u0008\u0010$\u001a\u00020\u0003H\u0002J\u0008\u0010%\u001a\u00020\u0003H\u0002J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020&H\u0002J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020&H\u0002J\u0008\u0010+\u001a\u00020*H\u0002J\u0008\u0010-\u001a\u00020,H\u0002J\u0008\u0010.\u001a\u00020,H\u0002J\u0010\u00101\u001a\u00020\u00032\u0006\u00100\u001a\u00020/H\u0002J\u0008\u00102\u001a\u00020\u0003H\u0002J\u0010\u00105\u001a\u00020\u00032\u0006\u00104\u001a\u000203H\u0002J\u0008\u00106\u001a\u00020\u0003H\u0002J\u0008\u00107\u001a\u00020\u0003H\u0002J\u0008\u00108\u001a\u00020\u0003H\u0002J\u0008\u00109\u001a\u00020\u0003H\u0002J\u0008\u0010;\u001a\u00020:H\u0002J\u0008\u0010<\u001a\u00020\u0012H\u0002J\u0008\u0010=\u001a\u00020\u0003H\u0002J#\u0010A\u001a\u00020\u00032\u0006\u0010?\u001a\u00020>2\n\u0008\u0002\u0010@\u001a\u0004\u0018\u000103H\u0002\u00a2\u0006\u0004\u0008A\u0010BJ\u0008\u0010C\u001a\u00020\u0003H\u0016J\u0008\u0010D\u001a\u00020\u0003H\u0016J\u0008\u0010E\u001a\u00020\u0003H\u0014J\u0010\u0010H\u001a\u00020\u00032\u0006\u0010G\u001a\u00020FH\u0016J\u0008\u0010I\u001a\u00020\u0003H\u0016R\u0014\u0010M\u001a\u00020J8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0017\u0010S\u001a\u00020N8\u0006\u00a2\u0006\u000c\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010RR\u0017\u0010Y\u001a\u00020T8\u0006\u00a2\u0006\u000c\n\u0004\u0008U\u0010V\u001a\u0004\u0008W\u0010XR\u0018\u0010]\u001a\u0004\u0018\u00010Z8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R\u001b\u0010c\u001a\u00020^8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008_\u0010`\u001a\u0004\u0008a\u0010bR\u001b\u0010h\u001a\u00020d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008e\u0010`\u001a\u0004\u0008f\u0010gR\u0018\u0010j\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010iR\u001a\u0010l\u001a\u0008\u0012\u0004\u0012\u00020/0\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u0010kR\u0016\u0010m\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u0010(R\u0016\u0010o\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008n\u0010(R\u0014\u0010r\u001a\u00020p8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u0010q\u00a8\u0006u"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;",
        "Landroid/app/Dialog;",
        "Landroid/content/ComponentCallbacks;",
        "",
        "E",
        "F",
        "P",
        "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;",
        "space",
        "L",
        "Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;",
        "item",
        "M",
        "Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;",
        "N",
        "",
        "templates",
        "q",
        "",
        "enable",
        "p",
        "x",
        "Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;",
        "action",
        "U",
        "Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateConfiguration;",
        "marginTemplateConfiguration",
        "W",
        "configuration",
        "S",
        "k",
        "d0",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "T",
        "y",
        "c0",
        "b0",
        "Landroid/view/View;",
        "view",
        "Z",
        "a0",
        "",
        "v",
        "Landroid/util/Size;",
        "u",
        "s",
        "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;",
        "size",
        "e0",
        "Y",
        "",
        "color",
        "o",
        "m",
        "X",
        "l",
        "O",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "w",
        "J",
        "K",
        "",
        "eventId",
        "state",
        "Q",
        "(Ljava/lang/String;Ljava/lang/Integer;)V",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "onStart",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "onLowMemory",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "activityContext",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;",
        "g",
        "Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;",
        "binding",
        "Landroidx/constraintlayout/widget/ConstraintSet;",
        "h",
        "Landroidx/constraintlayout/widget/ConstraintSet;",
        "defaultConstraintSet",
        "Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;",
        "i",
        "Lkotlin/Lazy;",
        "r",
        "()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;",
        "colorSelectAdapter",
        "Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;",
        "j",
        "t",
        "()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;",
        "marginTemplateAdapter",
        "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;",
        "marginTemplateSpaceArgs",
        "Ljava/util/List;",
        "sizeFormatList",
        "isSelectAll",
        "n",
        "isApplyCover",
        "com/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1",
        "Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1;",
        "checkAndReShowRunnable",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "note_overseasRelease"
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
        "SMAP\nPageMarginAdjustDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageMarginAdjustDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,638:1\n1#2:639\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Landroidx/constraintlayout/widget/ConstraintSet;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Z

.field public n:Z

.field public final o:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$style;->commonDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    sget-object p2, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$colorSelectAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$colorSelectAdapter$2;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->i:Lkotlin/Lazy;

    sget-object p2, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$marginTemplateAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$marginTemplateAdapter$2;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->j:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->CUSTOM:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->A4:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->A3:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    sget-object v3, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->A2:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    sget-object v4, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->A1:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    sget-object v5, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->LETTER:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    filled-new-array/range {v0 .. v5}, [Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->l:Ljava/util/List;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->E()V

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->F()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->y()V

    const/4 p1, 0x0

    const/4 p2, 0x2

    const-string v0, "view_galaxy_docsSetting_leaveBlank_0002"

    invoke-static {p0, v0, p1, p2, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->R(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->o:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1;

    return-void
.end method

.method public static final A(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "click_galaxy_docsSetting_leaveBlank_0003"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->Q(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->l()V

    return-void
.end method

.method public static final B(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->c0()V

    return-void
.end method

.method public static final C(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->b0()V

    return-void
.end method

.method public static final D(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectSize:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const-string v0, "flSelectSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->a0(Landroid/view/View;)V

    return-void
.end method

.method public static final G(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->N(Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;)V

    return-void
.end method

.method public static final H(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->Z(Landroid/view/View;)V

    return-void
.end method

.method public static final I(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V
    .locals 13

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->k:Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v11, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$initView$4$spacePopup$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$initView$4$spacePopup$1;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-direct {v11, v1, v0, v2}, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v4, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v5, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v8

    const-string v12, "getRoot(...)"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x18

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, v11

    move-object v3, p1

    invoke-static/range {v1 .. v10}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v11, p1, p0}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->show(Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public static synthetic R(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->Q(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final V(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->k()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->A(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$applyPageMarginArgs(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->l()V

    return-void
.end method

.method public static final synthetic access$changeMarginColor(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->o(I)V

    return-void
.end method

.method public static final synthetic access$getActivityContext$p(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getCurrentMarginSize(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)Landroid/util/Size;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->s()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSizeFormatList$p(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->l:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$isShowSmallLayout(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->J()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onSelectMarginSpace(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->L(Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;)V

    return-void
.end method

.method public static final synthetic access$onSelectMarginStyle(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->M(Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;)V

    return-void
.end method

.method public static final synthetic access$reloadContentBitmap(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->P()V

    return-void
.end method

.method public static final synthetic access$setApplyCover$p(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->n:Z

    return-void
.end method

.method public static final synthetic access$setPageMarginView(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->T(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic access$setSelectAll$p(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->m:Z

    return-void
.end method

.method public static final synthetic access$setupColorList(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->U(Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;)V

    return-void
.end method

.method public static final synthetic access$setupMarginTemplates(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateConfiguration;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->W(Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateConfiguration;)V

    return-void
.end method

.method public static final synthetic access$showSelectColorPopup(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->Y()V

    return-void
.end method

.method public static final synthetic access$updateButtonState(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->d0()V

    return-void
.end method

.method public static final synthetic access$updateShowSizeText(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->e0(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->n(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->D(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->V(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->H(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->B(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->C(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->z(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->G(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic j(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->I(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Z)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->X()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->setFirstApplyMargin(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->l()V

    :goto_0
    return-void
.end method

.method public static final z(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x2

    const-string v1, "click_galaxy_docsSetting_leaveBlank_0002"

    invoke-static {p0, v1, p1, v0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->R(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->w()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->initView(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method

.method public final F()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvColors:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvColors:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    const-string v1, "rvColors"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/android/sdk/device/R$dimen;->dp_6:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v0, v1, v3, v5, v3}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->addMaterialItemDecoration(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;IIZ)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvColors:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->r()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$initView$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$initView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->setPageMarginChangeCallback(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvTemplate:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvTemplate:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    const-string v1, "rvTemplate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v1, v3, v2, v3}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->addMaterialItemDecoration(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;IIZ)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvTemplate:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->t()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->t()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/tsk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/tsk;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectMarginStyle:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const-string v0, "flSelectMarginStyle"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/usk;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/usk;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectMarginLineSpace:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const-string v0, "flSelectMarginLineSpace"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/vsk;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/vsk;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final J()Z
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/DeviceFactory;->getScreenDevice()Lcom/onyx/android/sdk/device/IScreen;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/device/IScreen;->getScreenInfo()Lcom/onyx/android/sdk/device/bean/ScreenInfo;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->e:Landroid/content/Context;

    const-string v2, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->getWindowModeType()Lcom/onyx/android/sdk/device/bean/WindowModeType;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/onyx/android/sdk/device/IScreen;->getMultiWindowType(Landroid/app/Activity;Lcom/onyx/android/sdk/device/bean/WindowModeType;)Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    move-result-object p0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->getWindowModeType()Lcom/onyx/android/sdk/device/bean/WindowModeType;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/device/bean/WindowModeType;->FREEDOM_MODE:Lcom/onyx/android/sdk/device/bean/WindowModeType;

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->getAppScreenDp()F

    move-result v0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$integer;->page_margin_use_small_layout_dp:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->getScreenDisplayType()Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;->PHONE:Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_H_1_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final K()V
    .locals 9

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->ctlRoot:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectSize:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvConfirm:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v3, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectSize:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalBias(IF)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvMarginColor:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectSize:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-virtual {v0, v1, v5, v4, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvMarginColor:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvMarginSize:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v7, 0x6

    invoke-virtual {v0, v1, v7, v4, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvMarginColor:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvColors:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvMarginColor:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalBias(IF)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvMarginColor:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v8, Lcom/onyx/android/sdk/device/R$dimen;->dp_18:I

    invoke-virtual {v4, v8}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v8

    invoke-virtual {v0, v1, v5, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvColors:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->ctlRoot:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v1, v3, v8, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvColors:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvMarginColor:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v1, v5, v8, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvColors:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvMarginColor:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v1, v6, v8, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvTemplate:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvTemplate:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvColors:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v1, v5, v8, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvTemplate:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvColors:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v1, v3, v8, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvTemplate:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget v8, Lcom/onyx/android/sdk/device/R$dimen;->dp_18:I

    invoke-virtual {v4, v8}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v8

    invoke-virtual {v0, v1, v5, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvTemplate:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalBias(IF)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvMarginStyle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvMarginColor:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v1, v7, v8, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvMarginStyle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectMarginStyle:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectMarginStyle:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->rvTemplate:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v1, v5, v8, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectMarginStyle:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->ctlRoot:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v1, v3, v8, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectMarginStyle:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalBias(IF)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectMarginStyle:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_18:I

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvMarginLineSpace:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvMarginColor:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvMarginLineSpace:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvMarginLineSpace:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v7, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectMarginLineSpace:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectMarginLineSpace:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectMarginStyle:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v1, v5, v8, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectMarginLineSpace:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->ctlRoot:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v1, v3, v8, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectMarginLineSpace:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectMarginLineSpace:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget v8, Lcom/onyx/android/sdk/device/R$dimen;->dp_18:I

    invoke-virtual {v4, v8}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v8

    invoke-virtual {v0, v1, v5, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectMarginLineSpace:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget v8, Lcom/onyx/android/sdk/device/R$dimen;->dp_24:I

    invoke-virtual {v4, v8}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v8

    invoke-virtual {v0, v1, v3, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectMarginLineSpace:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v1, v5, v8, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v1, v5, v8, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->ctlRoot:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v1, v7, v8, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->ctlRoot:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v1, v3, v8, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget v8, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v4, v8}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v8

    invoke-virtual {v0, v1, v5, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v7, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvLabelSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvApplyCover:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->ctlRoot:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v1, v7, v8, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvApplyCover:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->ctlRoot:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v1, v3, v8, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvApplyCover:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvLabelSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v5, v3, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvApplyCover:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->ctlRoot:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v6, v3, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvApplyCover:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalChainStyle(II)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalChainStyle(II)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvApplyCover:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v7, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvApplyCover:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v3

    invoke-virtual {v0, v1, v5, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvApplyCover:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v3

    invoke-virtual {v0, v1, v6, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->ctlRoot:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectSize:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v0, Lcom/onyx/galaxy/note/R$dimen;->page_margin_size_small_text_size:I

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public final L(Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectMarginLineSpace:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->loadSpaceHalfUpDisplayValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->loadSpaceValuePx()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->updateMarginTemplateSpace(F)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->k:Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    return-void
.end method

.method public final M(Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;->getResName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->updateMarginTemplate(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectMarginStyle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;->getFillStyle()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->p(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->k:Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->loadSpaceValuePx()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->updateMarginTemplateSpace(F)V

    :cond_1
    return-void
.end method

.method public final N(Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->t()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;->selectTemplate(Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->k:Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;->getTemplates()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->clearMarginTemplate()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;->getTemplates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->q(Ljava/util/List;)Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->M(Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;->getSpaceArgs()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;->getSpaceArgs()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->L(Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final O()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentVisibleBoxInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->setPageId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->rotated(I)Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->setMarginPercent(Lcom/onyx/android/sdk/geometry/data/MarginPercent;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "marginPercent, left = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->getLeft()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", top = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->getTop()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->setApplyAll(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvApplyCover:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->setApplyToCover(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getMarginColor()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->setMarginColor(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getMarginTemplateRes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->setTemplateResource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getMarginTemplateSpace()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->setTemplateSpace(F)V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->timeBasedEpochUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->setTemplateResourceId(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/UpdatePageMarginEvent;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/events/app/UpdatePageMarginEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final P()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getMaxMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getEditArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageWithMarginAction;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageWithMarginAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILcom/onyx/android/sdk/geometry/data/MarginPercent;Landroid/graphics/RectF;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$f;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final Q(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "note_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "note_page_full_change"

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance p2, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    invoke-direct {p2, p1, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final S(Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateConfiguration;)V
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateConfiguration;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->N(Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;->getTemplates()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->M(Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;)V

    :cond_0
    return-void
.end method

.method public final T(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->w()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->setData(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/Bitmap;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->Companion:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->s()Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->l:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat$Companion;->fromSize(Landroid/util/Size;Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->e0(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V

    return-void
.end method

.method public final U(Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->w()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->hasMargin()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginStyle()Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->getColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;->getTemplateFillColor()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;->getColorList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;->getColorList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->r()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;->getColorList()Ljava/util/List;

    move-result-object p1

    new-instance v3, Lcom/sunia/HTREnginev2/ssk;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/ssk;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v2, p1, v1, v3}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;->setColorData(Ljava/util/List;ILjava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->o(I)V

    return-void
.end method

.method public final W(Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateConfiguration;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->t()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateConfiguration;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->w()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginStyle()Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->getTemplateResource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->t()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;->findTemplateByRes(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->N(Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;)V

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->M(Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->k:Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginStyle()Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->getTemplateSpace()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->setSpaceValuePx(F)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->L(Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v2, v0

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->S(Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateConfiguration;)V

    :cond_2
    return-void
.end method

.method public final X()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/onyx/galaxy/note/R$string;->hint:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setWarning(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->adjust_margin_confirm_tip:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setMessage(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->apply:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showConfirmDialog$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showConfirmDialog$1;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelable(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    return-void
.end method

.method public final Y()V
    .locals 13

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getMarginColor()I

    move-result v5

    sget-object v6, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    new-instance v7, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showSelectColorPopup$1;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showSelectColorPopup$1;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;Landroid/view/View;ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final Z(Landroid/view/View;)V
    .locals 13

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->t()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->t()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;->getSelectedIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt;->getItemSafely(Lcom/chad/library/adapter4/BaseQuickAdapter;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;->getTemplates()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PageMarginStylePopup;

    invoke-direct {v1, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageMarginStylePopup;-><init>(Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->v()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PageMarginStylePopup;->setTextSize(F)Lcom/onyx/galaxy/note/editor/view/popup/PageMarginStylePopup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->t()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->t()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;->getSelectedIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt;->getItemSafely(Lcom/chad/library/adapter4/BaseQuickAdapter;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;->getTemplates()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->q(Ljava/util/List;)Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PageMarginStylePopup;->setCurrentStyle(Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;)Lcom/onyx/galaxy/note/editor/view/popup/PageMarginStylePopup;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showSelectMarginStylePopup$stylePopup$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showSelectMarginStylePopup$stylePopup$1;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PageMarginStylePopup;->setCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/galaxy/note/editor/view/popup/PageMarginStylePopup;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    sget-object v5, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v6, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_10:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v7, v2

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v9

    const-string v12, "getRoot(...)"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object v2, v1

    move-object v3, v0

    move-object v4, p1

    invoke-static/range {v2 .. v11}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p1, p0}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->show(Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final a0(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/PageMarginSizePopup;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->l:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2}, Lcom/onyx/galaxy/note/editor/view/popup/PageMarginSizePopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->v()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PageMarginSizePopup;->setTextSize(F)Lcom/onyx/galaxy/note/editor/view/popup/PageMarginSizePopup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->u()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PageMarginSizePopup;->setMinSelectSize(Landroid/util/Size;)Lcom/onyx/galaxy/note/editor/view/popup/PageMarginSizePopup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->s()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PageMarginSizePopup;->setCurrentSize(Landroid/util/Size;)Lcom/onyx/galaxy/note/editor/view/popup/PageMarginSizePopup;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showSelectSizePopup$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showSelectSizePopup$1;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PageMarginSizePopup;->setCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/galaxy/note/editor/view/popup/PageMarginSizePopup;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_10:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public final b0()V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->n:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->n:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->d0()V

    return-void
.end method

.method public final c0()V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->m:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->n:Z

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->d0()V

    return-void
.end method

.method public final d0()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->m:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvApplyCover:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvApplyCover:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->n:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public final e0(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectSize:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSizeFormatName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->ctlRoot:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->o:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->ctlRoot:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->o:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final l()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->O()V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final m()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isFirstApplyMargin(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/rsk;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/rsk;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final o(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->setMarginColor(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->t()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;->setFillColor(I)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->k()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->h:Landroidx/constraintlayout/widget/ConstraintSet;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->h:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->ctlRoot:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->J()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getSmallWindowExpectedWidth()F

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->K()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getExpectedWidth()F

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->J()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->displayForSmallWindow(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->x()V

    return-void
.end method

.method public final p(Z)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectMarginLineSpace:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectMarginLineSpace:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvMarginLineSpace:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final q(Ljava/util/List;)Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;",
            ">;)",
            "Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p0, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;->Companion:Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle$Companion;->getEMPTY()Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectMarginStyle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    sget-object p0, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;->Companion:Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle$Companion;->getEMPTY()Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;

    move-result-object p0

    return-object p0

    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;

    if-nez v0, :cond_5

    sget-object p0, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;->Companion:Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle$Companion;->getEMPTY()Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public final r()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;

    return-object p0
.end method

.method public final s()Landroid/util/Size;
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->w()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->toRectFWithMargin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    :goto_0
    return-object p0
.end method

.method public final t()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->j:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;

    return-object p0
.end method

.method public final u()Landroid/util/Size;
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->w()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->toRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->CUSTOM:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    :goto_0
    return-object p0
.end method

.method public final v()F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->J()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$dimen;->page_margin_size_small_text_size:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$dimen;->page_margin_size_normal_text_size:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    :goto_0
    return p0
.end method

.method public final w()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentVisibleBoxInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->Companion:Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;->rotate(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final x()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$a;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$b;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$c;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$initData$4;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$initData$4;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$d;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$e;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final y()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/msk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/msk;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvConfirm:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/nsk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/nsk;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/osk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/osk;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->tvApplyCover:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/psk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/psk;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->flSelectSize:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/qsk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/qsk;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->r()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$initListener$6;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$initListener$6;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;->setColorChangeCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
