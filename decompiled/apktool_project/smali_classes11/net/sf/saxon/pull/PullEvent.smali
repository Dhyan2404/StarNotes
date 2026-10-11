.class public final enum Lnet/sf/saxon/pull/PullEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/pull/PullEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/pull/PullEvent;

.field public static final enum ATOMIC_VALUE:Lnet/sf/saxon/pull/PullEvent;

.field public static final enum ATTRIBUTE:Lnet/sf/saxon/pull/PullEvent;

.field public static final enum COMMENT:Lnet/sf/saxon/pull/PullEvent;

.field public static final enum END_DOCUMENT:Lnet/sf/saxon/pull/PullEvent;

.field public static final enum END_ELEMENT:Lnet/sf/saxon/pull/PullEvent;

.field public static final enum END_OF_INPUT:Lnet/sf/saxon/pull/PullEvent;

.field public static final enum NAMESPACE:Lnet/sf/saxon/pull/PullEvent;

.field public static final enum PROCESSING_INSTRUCTION:Lnet/sf/saxon/pull/PullEvent;

.field public static final enum START_DOCUMENT:Lnet/sf/saxon/pull/PullEvent;

.field public static final enum START_ELEMENT:Lnet/sf/saxon/pull/PullEvent;

.field public static final enum START_OF_INPUT:Lnet/sf/saxon/pull/PullEvent;

.field public static final enum TEXT:Lnet/sf/saxon/pull/PullEvent;

.field public static final enum WORK_IN_PROGRESS:Lnet/sf/saxon/pull/PullEvent;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lnet/sf/saxon/pull/PullEvent;

    const-string v1, "START_OF_INPUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/pull/PullEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/pull/PullEvent;->START_OF_INPUT:Lnet/sf/saxon/pull/PullEvent;

    new-instance v1, Lnet/sf/saxon/pull/PullEvent;

    const-string v2, "ATOMIC_VALUE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/pull/PullEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/pull/PullEvent;->ATOMIC_VALUE:Lnet/sf/saxon/pull/PullEvent;

    new-instance v2, Lnet/sf/saxon/pull/PullEvent;

    const-string v3, "START_DOCUMENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/pull/PullEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/pull/PullEvent;->START_DOCUMENT:Lnet/sf/saxon/pull/PullEvent;

    new-instance v3, Lnet/sf/saxon/pull/PullEvent;

    const-string v4, "END_DOCUMENT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/pull/PullEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/pull/PullEvent;->END_DOCUMENT:Lnet/sf/saxon/pull/PullEvent;

    new-instance v4, Lnet/sf/saxon/pull/PullEvent;

    const-string v5, "START_ELEMENT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/pull/PullEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/pull/PullEvent;->START_ELEMENT:Lnet/sf/saxon/pull/PullEvent;

    new-instance v5, Lnet/sf/saxon/pull/PullEvent;

    const-string v6, "END_ELEMENT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnet/sf/saxon/pull/PullEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/sf/saxon/pull/PullEvent;->END_ELEMENT:Lnet/sf/saxon/pull/PullEvent;

    new-instance v6, Lnet/sf/saxon/pull/PullEvent;

    const-string v7, "ATTRIBUTE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lnet/sf/saxon/pull/PullEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lnet/sf/saxon/pull/PullEvent;->ATTRIBUTE:Lnet/sf/saxon/pull/PullEvent;

    new-instance v7, Lnet/sf/saxon/pull/PullEvent;

    const-string v8, "NAMESPACE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lnet/sf/saxon/pull/PullEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/sf/saxon/pull/PullEvent;->NAMESPACE:Lnet/sf/saxon/pull/PullEvent;

    new-instance v8, Lnet/sf/saxon/pull/PullEvent;

    const-string v9, "TEXT"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lnet/sf/saxon/pull/PullEvent;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lnet/sf/saxon/pull/PullEvent;->TEXT:Lnet/sf/saxon/pull/PullEvent;

    new-instance v9, Lnet/sf/saxon/pull/PullEvent;

    const-string v10, "COMMENT"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lnet/sf/saxon/pull/PullEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/sf/saxon/pull/PullEvent;->COMMENT:Lnet/sf/saxon/pull/PullEvent;

    new-instance v10, Lnet/sf/saxon/pull/PullEvent;

    const-string v11, "PROCESSING_INSTRUCTION"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lnet/sf/saxon/pull/PullEvent;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lnet/sf/saxon/pull/PullEvent;->PROCESSING_INSTRUCTION:Lnet/sf/saxon/pull/PullEvent;

    new-instance v11, Lnet/sf/saxon/pull/PullEvent;

    const-string v12, "END_OF_INPUT"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lnet/sf/saxon/pull/PullEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lnet/sf/saxon/pull/PullEvent;->END_OF_INPUT:Lnet/sf/saxon/pull/PullEvent;

    new-instance v12, Lnet/sf/saxon/pull/PullEvent;

    const-string v13, "WORK_IN_PROGRESS"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lnet/sf/saxon/pull/PullEvent;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lnet/sf/saxon/pull/PullEvent;->WORK_IN_PROGRESS:Lnet/sf/saxon/pull/PullEvent;

    filled-new-array/range {v0 .. v12}, [Lnet/sf/saxon/pull/PullEvent;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/pull/PullEvent;->$VALUES:[Lnet/sf/saxon/pull/PullEvent;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/pull/PullEvent;
    .locals 1

    const-class v0, Lnet/sf/saxon/pull/PullEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/pull/PullEvent;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/pull/PullEvent;
    .locals 1

    sget-object v0, Lnet/sf/saxon/pull/PullEvent;->$VALUES:[Lnet/sf/saxon/pull/PullEvent;

    invoke-virtual {v0}, [Lnet/sf/saxon/pull/PullEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/pull/PullEvent;

    return-object v0
.end method
