.class final Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote$toggleReadingEditTouchMode$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->toggleReadingEditTouchMode()Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
        "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
        "it",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote$toggleReadingEditTouchMode$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote$toggleReadingEditTouchMode$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote$toggleReadingEditTouchMode$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote$toggleReadingEditTouchMode$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote$toggleReadingEditTouchMode$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->isReadingMode()Z

    move-result p0

    const-string v0, "ONYX_NOTE_EDIT_SCRIBBLE_TOUCH_MODE"

    if-eqz p0, :cond_0

    .line 3
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getEditTouchMode(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->saveEditTouchMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Ljava/lang/String;)V

    .line 5
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->READING:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote$toggleReadingEditTouchMode$1;->invoke(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object p0

    return-object p0
.end method
