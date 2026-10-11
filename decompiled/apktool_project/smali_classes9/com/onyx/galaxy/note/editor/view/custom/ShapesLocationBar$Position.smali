.class public final enum Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;",
        "",
        "(Ljava/lang/String;I)V",
        "LEFT_TOP",
        "RIGHT_TOP",
        "FREE",
        "note_overseasRelease"
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

.field private static final synthetic $VALUES:[Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

.field public static final enum FREE:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

.field public static final enum LEFT_TOP:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

.field public static final enum RIGHT_TOP:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;->LEFT_TOP:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;->RIGHT_TOP:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;->FREE:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

    const-string v1, "LEFT_TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;->LEFT_TOP:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

    const-string v1, "RIGHT_TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;->RIGHT_TOP:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

    const-string v1, "FREE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;->FREE:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

    invoke-static {}, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;->$values()[Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;->$VALUES:[Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

    return-object p0
.end method

.method public static values()[Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;->$VALUES:[Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar$Position;

    return-object v0
.end method
