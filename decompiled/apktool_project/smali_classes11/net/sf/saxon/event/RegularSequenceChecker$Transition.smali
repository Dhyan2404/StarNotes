.class final enum Lnet/sf/saxon/event/RegularSequenceChecker$Transition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/RegularSequenceChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Transition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/event/RegularSequenceChecker$Transition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

.field public static final enum APPEND:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

.field public static final enum CLOSE:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

.field public static final enum COMMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

.field public static final enum END_DOCUMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

.field public static final enum END_ELEMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

.field public static final enum OPEN:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

.field public static final enum PI:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

.field public static final enum START_DOCUMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

.field public static final enum START_ELEMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

.field public static final enum TEXT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->OPEN:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    new-instance v1, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    const-string v2, "APPEND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->APPEND:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    new-instance v2, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    const-string v3, "TEXT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->TEXT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    new-instance v3, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    const-string v4, "COMMENT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->COMMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    new-instance v4, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    const-string v5, "PI"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->PI:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    new-instance v5, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    const-string v6, "START_DOCUMENT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->START_DOCUMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    new-instance v6, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    const-string v7, "START_ELEMENT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->START_ELEMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    new-instance v7, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    const-string v8, "END_ELEMENT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->END_ELEMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    new-instance v8, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    const-string v9, "END_DOCUMENT"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->END_DOCUMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    new-instance v9, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    const-string v10, "CLOSE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->CLOSE:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    filled-new-array/range {v0 .. v9}, [Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->$VALUES:[Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/event/RegularSequenceChecker$Transition;
    .locals 1

    const-class v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/event/RegularSequenceChecker$Transition;
    .locals 1

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->$VALUES:[Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-virtual {v0}, [Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    return-object v0
.end method
