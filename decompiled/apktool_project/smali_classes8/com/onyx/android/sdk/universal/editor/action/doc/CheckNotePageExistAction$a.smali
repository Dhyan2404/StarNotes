.class public final Lcom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckNotePageExistAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckNotePageExistAction.kt\ncom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction$create$1\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,20:1\n41#2,5:21\n*S KotlinDebug\n*F\n+ 1 CheckNotePageExistAction.kt\ncom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction$create$1\n*L\n17#1:21,5\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCheckNotePageExistAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckNotePageExistAction.kt\ncom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction$create$1\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,20:1\n41#2,5:21\n*S KotlinDebug\n*F\n+ 1 CheckNotePageExistAction.kt\ncom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction$create$1\n*L\n17#1:21,5\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction$a<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction$a;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;)Ljava/lang/Boolean;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction$a;->a(Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
