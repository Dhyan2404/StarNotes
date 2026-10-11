.class public final enum Lnet/sf/saxon/s9api/Axis;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/s9api/Axis;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/s9api/Axis;

.field public static final enum ANCESTOR:Lnet/sf/saxon/s9api/Axis;

.field public static final enum ANCESTOR_OR_SELF:Lnet/sf/saxon/s9api/Axis;

.field public static final enum ATTRIBUTE:Lnet/sf/saxon/s9api/Axis;

.field public static final enum CHILD:Lnet/sf/saxon/s9api/Axis;

.field public static final enum DESCENDANT:Lnet/sf/saxon/s9api/Axis;

.field public static final enum DESCENDANT_OR_SELF:Lnet/sf/saxon/s9api/Axis;

.field public static final enum FOLLOWING:Lnet/sf/saxon/s9api/Axis;

.field public static final enum FOLLOWING_SIBLING:Lnet/sf/saxon/s9api/Axis;

.field public static final enum NAMESPACE:Lnet/sf/saxon/s9api/Axis;

.field public static final enum PARENT:Lnet/sf/saxon/s9api/Axis;

.field public static final enum PRECEDING:Lnet/sf/saxon/s9api/Axis;

.field public static final enum PRECEDING_SIBLING:Lnet/sf/saxon/s9api/Axis;

.field public static final enum SELF:Lnet/sf/saxon/s9api/Axis;


# instance fields
.field private final axisNumber:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lnet/sf/saxon/s9api/Axis;

    const-string v1, "ANCESTOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/sf/saxon/s9api/Axis;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/s9api/Axis;->ANCESTOR:Lnet/sf/saxon/s9api/Axis;

    new-instance v1, Lnet/sf/saxon/s9api/Axis;

    const-string v2, "ANCESTOR_OR_SELF"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lnet/sf/saxon/s9api/Axis;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/sf/saxon/s9api/Axis;->ANCESTOR_OR_SELF:Lnet/sf/saxon/s9api/Axis;

    new-instance v2, Lnet/sf/saxon/s9api/Axis;

    const-string v3, "ATTRIBUTE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lnet/sf/saxon/s9api/Axis;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/sf/saxon/s9api/Axis;->ATTRIBUTE:Lnet/sf/saxon/s9api/Axis;

    new-instance v3, Lnet/sf/saxon/s9api/Axis;

    const-string v4, "CHILD"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lnet/sf/saxon/s9api/Axis;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/sf/saxon/s9api/Axis;->CHILD:Lnet/sf/saxon/s9api/Axis;

    new-instance v4, Lnet/sf/saxon/s9api/Axis;

    const-string v5, "DESCENDANT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lnet/sf/saxon/s9api/Axis;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/sf/saxon/s9api/Axis;->DESCENDANT:Lnet/sf/saxon/s9api/Axis;

    new-instance v5, Lnet/sf/saxon/s9api/Axis;

    const-string v6, "DESCENDANT_OR_SELF"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lnet/sf/saxon/s9api/Axis;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/sf/saxon/s9api/Axis;->DESCENDANT_OR_SELF:Lnet/sf/saxon/s9api/Axis;

    new-instance v6, Lnet/sf/saxon/s9api/Axis;

    const-string v7, "FOLLOWING"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lnet/sf/saxon/s9api/Axis;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/sf/saxon/s9api/Axis;->FOLLOWING:Lnet/sf/saxon/s9api/Axis;

    new-instance v7, Lnet/sf/saxon/s9api/Axis;

    const-string v8, "FOLLOWING_SIBLING"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lnet/sf/saxon/s9api/Axis;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/sf/saxon/s9api/Axis;->FOLLOWING_SIBLING:Lnet/sf/saxon/s9api/Axis;

    new-instance v8, Lnet/sf/saxon/s9api/Axis;

    const-string v9, "PARENT"

    const/16 v10, 0x8

    const/16 v11, 0x9

    invoke-direct {v8, v9, v10, v11}, Lnet/sf/saxon/s9api/Axis;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lnet/sf/saxon/s9api/Axis;->PARENT:Lnet/sf/saxon/s9api/Axis;

    new-instance v9, Lnet/sf/saxon/s9api/Axis;

    const-string v12, "PRECEDING"

    const/16 v13, 0xa

    invoke-direct {v9, v12, v11, v13}, Lnet/sf/saxon/s9api/Axis;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lnet/sf/saxon/s9api/Axis;->PRECEDING:Lnet/sf/saxon/s9api/Axis;

    new-instance v11, Lnet/sf/saxon/s9api/Axis;

    const-string v12, "PRECEDING_SIBLING"

    const/16 v14, 0xb

    invoke-direct {v11, v12, v13, v14}, Lnet/sf/saxon/s9api/Axis;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lnet/sf/saxon/s9api/Axis;->PRECEDING_SIBLING:Lnet/sf/saxon/s9api/Axis;

    new-instance v12, Lnet/sf/saxon/s9api/Axis;

    const-string v13, "SELF"

    const/16 v15, 0xc

    invoke-direct {v12, v13, v14, v15}, Lnet/sf/saxon/s9api/Axis;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lnet/sf/saxon/s9api/Axis;->SELF:Lnet/sf/saxon/s9api/Axis;

    new-instance v13, Lnet/sf/saxon/s9api/Axis;

    const-string v14, "NAMESPACE"

    invoke-direct {v13, v14, v15, v10}, Lnet/sf/saxon/s9api/Axis;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lnet/sf/saxon/s9api/Axis;->NAMESPACE:Lnet/sf/saxon/s9api/Axis;

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    filled-new-array/range {v0 .. v12}, [Lnet/sf/saxon/s9api/Axis;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/s9api/Axis;->$VALUES:[Lnet/sf/saxon/s9api/Axis;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/sf/saxon/s9api/Axis;->axisNumber:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/s9api/Axis;
    .locals 1

    const-class v0, Lnet/sf/saxon/s9api/Axis;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/Axis;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/s9api/Axis;
    .locals 1

    sget-object v0, Lnet/sf/saxon/s9api/Axis;->$VALUES:[Lnet/sf/saxon/s9api/Axis;

    invoke-virtual {v0}, [Lnet/sf/saxon/s9api/Axis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/s9api/Axis;

    return-object v0
.end method


# virtual methods
.method public getAxisNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/s9api/Axis;->axisNumber:I

    return p0
.end method
