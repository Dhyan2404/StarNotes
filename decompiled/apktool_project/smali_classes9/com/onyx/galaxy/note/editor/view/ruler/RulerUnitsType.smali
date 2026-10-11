.class public final enum Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;",
        "",
        "radix",
        "",
        "millimeter",
        "",
        "(Ljava/lang/String;IIF)V",
        "getMillimeter",
        "()F",
        "getRadix",
        "()I",
        "CM",
        "IN",
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

.field private static final synthetic $VALUES:[Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

.field public static final enum CM:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

.field public static final enum IN:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;


# instance fields
.field private final millimeter:F

.field private final radix:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->CM:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->IN:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    filled-new-array {v0, v1}, [Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    const/16 v1, 0xa

    const/high16 v2, 0x41200000    # 10.0f

    const-string v3, "CM"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;-><init>(Ljava/lang/String;IIF)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->CM:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    const/16 v1, 0x10

    const v2, 0x41cb3333    # 25.4f

    const-string v3, "IN"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;-><init>(Ljava/lang/String;IIF)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->IN:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    invoke-static {}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->$values()[Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->$VALUES:[Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->radix:I

    iput p4, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->millimeter:F

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->$VALUES:[Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    return-object v0
.end method


# virtual methods
.method public final getMillimeter()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->millimeter:F

    return p0
.end method

.method public final getRadix()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->radix:I

    return p0
.end method
