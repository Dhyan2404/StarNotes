.class public final Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShowLongPressPopupAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowLongPressPopupAction.kt\ncom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$create$2\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,58:1\n41#2,5:59\n*S KotlinDebug\n*F\n+ 1 ShowLongPressPopupAction.kt\ncom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$create$2\n*L\n31#1:59,5\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShowLongPressPopupAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowLongPressPopupAction.kt\ncom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$create$2\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,58:1\n41#2,5:59\n*S KotlinDebug\n*F\n+ 1 ShowLongPressPopupAction.kt\ncom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$create$2\n*L\n31#1:59,5\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$a;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$a;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$a;->e:Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$a;->a(Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;)Z

    move-result p0

    return p0
.end method
