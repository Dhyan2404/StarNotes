.class public final Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$e;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$e;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$e;->e:Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p1, Lcom/onyx/galaxy/note/datarepository/event/StickerChangeEvent;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/datarepository/event/StickerChangeEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$e;->a(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;)V

    return-void
.end method
