.class public final enum Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "",
        "(Ljava/lang/String;I)V",
        "isUndefined",
        "",
        "Undefined",
        "ScaleXY",
        "ScaleX",
        "ScaleY",
        "Translate",
        "Rotation",
        "XAxisMirror",
        "YAxisMirror",
        "Drag",
        "QuickCopy",
        "sdk-note_overseasRelease"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

.field public static final enum Drag:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

.field public static final enum QuickCopy:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

.field public static final enum Rotation:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

.field public static final enum ScaleX:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

.field public static final enum ScaleXY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

.field public static final enum ScaleY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

.field public static final enum Translate:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

.field public static final enum Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

.field public static final enum XAxisMirror:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

.field public static final enum YAxisMirror:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .locals 10

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleXY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v2, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleX:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v3, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v4, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Translate:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v5, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Rotation:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v6, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->XAxisMirror:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v7, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->YAxisMirror:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v8, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Drag:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v9, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->QuickCopy:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    filled-new-array/range {v0 .. v9}, [Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    const-string v1, "Undefined"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    const-string v1, "ScaleXY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleXY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    const-string v1, "ScaleX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleX:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    const-string v1, "ScaleY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    const-string v1, "Translate"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Translate:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    const-string v1, "Rotation"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Rotation:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    const-string v1, "XAxisMirror"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->XAxisMirror:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    const-string v1, "YAxisMirror"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->YAxisMirror:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    const-string v1, "Drag"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Drag:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    const-string v1, "QuickCopy"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->QuickCopy:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    invoke-static {}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->$values()[Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->$VALUES:[Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->$VALUES:[Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object v0
.end method


# virtual methods
.method public isUndefined()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
