.class public final enum Lcom/onyx/android/sdk/textbox/data/EditorState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/textbox/data/EditorState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0005R\u0011\u0010\u0007\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u0011\u0010\u0008\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0005R\u0011\u0010\t\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0005j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/data/EditorState;",
        "",
        "(Ljava/lang/String;I)V",
        "isEditing",
        "",
        "()Z",
        "isIdleState",
        "isPrepared",
        "isReadOnly",
        "isRendering",
        "IDLE",
        "PREPARE",
        "READ_ONLY",
        "EDITING",
        "RENDER",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/textbox/data/EditorState;

.field public static final enum EDITING:Lcom/onyx/android/sdk/textbox/data/EditorState;

.field public static final enum IDLE:Lcom/onyx/android/sdk/textbox/data/EditorState;

.field public static final enum PREPARE:Lcom/onyx/android/sdk/textbox/data/EditorState;

.field public static final enum READ_ONLY:Lcom/onyx/android/sdk/textbox/data/EditorState;

.field public static final enum RENDER:Lcom/onyx/android/sdk/textbox/data/EditorState;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/textbox/data/EditorState;
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->IDLE:Lcom/onyx/android/sdk/textbox/data/EditorState;

    sget-object v1, Lcom/onyx/android/sdk/textbox/data/EditorState;->PREPARE:Lcom/onyx/android/sdk/textbox/data/EditorState;

    sget-object v2, Lcom/onyx/android/sdk/textbox/data/EditorState;->READ_ONLY:Lcom/onyx/android/sdk/textbox/data/EditorState;

    sget-object v3, Lcom/onyx/android/sdk/textbox/data/EditorState;->EDITING:Lcom/onyx/android/sdk/textbox/data/EditorState;

    sget-object v4, Lcom/onyx/android/sdk/textbox/data/EditorState;->RENDER:Lcom/onyx/android/sdk/textbox/data/EditorState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/onyx/android/sdk/textbox/data/EditorState;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/textbox/data/EditorState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/textbox/data/EditorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->IDLE:Lcom/onyx/android/sdk/textbox/data/EditorState;

    new-instance v0, Lcom/onyx/android/sdk/textbox/data/EditorState;

    const-string v1, "PREPARE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/textbox/data/EditorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->PREPARE:Lcom/onyx/android/sdk/textbox/data/EditorState;

    new-instance v0, Lcom/onyx/android/sdk/textbox/data/EditorState;

    const-string v1, "READ_ONLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/textbox/data/EditorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->READ_ONLY:Lcom/onyx/android/sdk/textbox/data/EditorState;

    new-instance v0, Lcom/onyx/android/sdk/textbox/data/EditorState;

    const-string v1, "EDITING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/textbox/data/EditorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->EDITING:Lcom/onyx/android/sdk/textbox/data/EditorState;

    new-instance v0, Lcom/onyx/android/sdk/textbox/data/EditorState;

    const-string v1, "RENDER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/textbox/data/EditorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->RENDER:Lcom/onyx/android/sdk/textbox/data/EditorState;

    invoke-static {}, Lcom/onyx/android/sdk/textbox/data/EditorState;->$values()[Lcom/onyx/android/sdk/textbox/data/EditorState;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->$VALUES:[Lcom/onyx/android/sdk/textbox/data/EditorState;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/textbox/data/EditorState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/textbox/data/EditorState;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/textbox/data/EditorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/textbox/data/EditorState;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/textbox/data/EditorState;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->$VALUES:[Lcom/onyx/android/sdk/textbox/data/EditorState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/textbox/data/EditorState;

    return-object v0
.end method


# virtual methods
.method public final isEditing()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->EDITING:Lcom/onyx/android/sdk/textbox/data/EditorState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isIdleState()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->IDLE:Lcom/onyx/android/sdk/textbox/data/EditorState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPrepared()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->PREPARE:Lcom/onyx/android/sdk/textbox/data/EditorState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isReadOnly()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->READ_ONLY:Lcom/onyx/android/sdk/textbox/data/EditorState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRendering()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->RENDER:Lcom/onyx/android/sdk/textbox/data/EditorState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
