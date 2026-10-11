.class public final Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAreaCodeDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AreaCodeDialog.kt\ncom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,152:1\n350#2,7:153\n13374#3,3:160\n13374#3,3:163\n*S KotlinDebug\n*F\n+ 1 AreaCodeDialog.kt\ncom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog\n*L\n80#1:153,7\n116#1:160,3\n125#1:163,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 <2\u00020\u0001:\u0001<B:\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012!\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0016\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u00040\u0015\u0012\u0006\u0010\u001d\u001a\u00020\u0006\u00a2\u0006\u0004\u0008:\u0010;J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0008\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u000b\u001a\u00020\u0004H\u0002J \u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R/\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0016\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u00040\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u001cR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R?\u0010(\u001a&\u0012\u000c\u0012\n %*\u0004\u0018\u00010\u00060\u0006 %*\u0012\u0012\u000e\u0008\u0001\u0012\n %*\u0004\u0018\u00010\u00060\u00060$0$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010 \u001a\u0004\u0008\u0012\u0010\'R \u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160)0)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u001b\u00109\u001a\u0002058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u0010 \u001a\u0004\u00087\u00108\u00a8\u0006="
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;",
        "Landroid/app/Dialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "",
        "code",
        "updateAreaCode",
        "",
        "d",
        "f",
        "namesId",
        "codesId",
        "index",
        "a",
        "g",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "context",
        "Lkotlin/Function1;",
        "Lcom/onyx/galaxy/note/account/model/AreaCodeModel;",
        "Lkotlin/ParameterName;",
        "name",
        "model",
        "Lkotlin/jvm/functions/Function1;",
        "selectFunc",
        "Ljava/lang/String;",
        "currCode",
        "Lcom/onyx/galaxy/note/databinding/DialogAreaCodeBinding;",
        "h",
        "Lkotlin/Lazy;",
        "c",
        "()Lcom/onyx/galaxy/note/databinding/DialogAreaCodeBinding;",
        "binding",
        "",
        "kotlin.jvm.PlatformType",
        "i",
        "()[Ljava/lang/String;",
        "tabTitles",
        "",
        "j",
        "Ljava/util/List;",
        "datas",
        "Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;",
        "k",
        "Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;",
        "areaCodeAdapter",
        "Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeHeaderAdapter;",
        "l",
        "Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeHeaderAdapter;",
        "headerAdapter",
        "Lcom/chad/library/adapter4/QuickAdapterHelper;",
        "m",
        "b",
        "()Lcom/chad/library/adapter4/QuickAdapterHelper;",
        "adapterHelper",
        "<init>",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V",
        "Companion",
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
        "SMAP\nAreaCodeDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AreaCodeDialog.kt\ncom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,152:1\n350#2,7:153\n13374#3,3:160\n13374#3,3:163\n*S KotlinDebug\n*F\n+ 1 AreaCodeDialog.kt\ncom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog\n*L\n80#1:153,7\n116#1:160,3\n125#1:163,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final n:I = 0x0

.field public static final o:I = 0x1

.field public static final p:I = 0x2

.field public static final q:I = 0x3

.field public static final r:I = 0x4

.field public static final s:I = 0x5

.field public static final t:I = 0x6

.field public static final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/onyx/galaxy/note/account/model/AreaCodeModel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/account/model/AreaCodeModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeHeaderAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->Companion:Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog$Companion;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->u:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/galaxy/note/account/model/AreaCodeModel;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectFunc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$style;->Custom_NoTitle_Dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->f:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->g:Ljava/lang/String;

    new-instance p1, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->h:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog$tabTitles$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog$tabTitles$2;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->i:Lkotlin/Lazy;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->j:Ljava/util/List;

    new-instance p1, Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;

    iget-object p3, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->g:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->k:Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;

    new-instance p1, Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeHeaderAdapter;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeHeaderAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->l:Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeHeaderAdapter;

    new-instance p1, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog$adapterHelper$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog$adapterHelper$2;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->m:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAreaCodeAdapter$p(Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;)Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->k:Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getCurrCode$p(Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getDatas$p(Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->j:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getHeaderAdapter$p(Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;)Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeHeaderAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->l:Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeHeaderAdapter;

    return-object p0
.end method


# virtual methods
.method public final a(III)V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "getStringArray(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->j:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->j:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v6, Lcom/onyx/galaxy/note/account/model/AreaCodeModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v2, p2, v2

    const-string v7, "get(...)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v3, v2}, Lcom/onyx/galaxy/note/account/model/AreaCodeModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "names size is not matched codes"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Lcom/chad/library/adapter4/QuickAdapterHelper;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->m:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter4/QuickAdapterHelper;

    return-object p0
.end method

.method public final c()Lcom/onyx/galaxy/note/databinding/DialogAreaCodeBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogAreaCodeBinding;

    return-object p0
.end method

.method public final d()I
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog$getDefaultTab$1$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog$getDefaultTab$1$1;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;)V

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public final e()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final f()V
    .locals 3

    sget v0, Lcom/onyx/galaxy/note/R$array;->area_code_asia_name:I

    sget v1, Lcom/onyx/galaxy/note/R$array;->area_code_asia_code:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->a(III)V

    sget v0, Lcom/onyx/galaxy/note/R$array;->area_code_europe_name:I

    sget v1, Lcom/onyx/galaxy/note/R$array;->area_code_europe_code:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->a(III)V

    sget v0, Lcom/onyx/galaxy/note/R$array;->area_code_africa_name:I

    sget v1, Lcom/onyx/galaxy/note/R$array;->area_code_africa_code:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->a(III)V

    sget v0, Lcom/onyx/galaxy/note/R$array;->area_code_north_america_name:I

    sget v1, Lcom/onyx/galaxy/note/R$array;->area_code_north_america_code:I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->a(III)V

    sget v0, Lcom/onyx/galaxy/note/R$array;->area_code_central_america_name:I

    sget v1, Lcom/onyx/galaxy/note/R$array;->area_code_central_america_code:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->a(III)V

    sget v0, Lcom/onyx/galaxy/note/R$array;->area_code_south_america_name:I

    sget v1, Lcom/onyx/galaxy/note/R$array;->area_code_south_america_code:I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->a(III)V

    sget v0, Lcom/onyx/galaxy/note/R$array;->area_code_oceania_name:I

    sget v1, Lcom/onyx/galaxy/note/R$array;->area_code_oceania_code:I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->a(III)V

    return-void
.end method

.method public final g()V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->k:Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->j:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogAreaCodeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogAreaCodeBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->b()Lcom/chad/library/adapter4/QuickAdapterHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter4/QuickAdapterHelper;->getAdapter()Landroidx/recyclerview/widget/ConcatAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->e()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "<get-tabTitles>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogAreaCodeBinding;

    move-result-object v6

    iget-object v6, v6, Lcom/onyx/galaxy/note/databinding/DialogAreaCodeBinding;->scrollableTabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogAreaCodeBinding;

    move-result-object v7

    iget-object v7, v7, Lcom/onyx/galaxy/note/databinding/DialogAreaCodeBinding;->scrollableTabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v7}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    sget-object v4, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->u:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v6, v7}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogAreaCodeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogAreaCodeBinding;->scrollableTabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    new-instance v1, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog$initView$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog$initView$2;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogAreaCodeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogAreaCodeBinding;->scrollableTabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const-string v1, "scrollableTabLayout"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/extension/TabLayoutKt;->selectTab(Lcom/google/android/material/tabs/TabLayout;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffe3

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final updateAreaCode(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->k:Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;->updateAreaCode(Ljava/lang/String;)V

    return-void
.end method
