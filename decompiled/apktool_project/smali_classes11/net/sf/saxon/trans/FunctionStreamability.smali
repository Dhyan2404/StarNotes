.class public final enum Lnet/sf/saxon/trans/FunctionStreamability;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/trans/FunctionStreamability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/trans/FunctionStreamability;

.field public static final enum ABSORBING:Lnet/sf/saxon/trans/FunctionStreamability;

.field public static final enum ASCENT:Lnet/sf/saxon/trans/FunctionStreamability;

.field public static final enum DEEP_DESCENT:Lnet/sf/saxon/trans/FunctionStreamability;

.field public static final enum FILTER:Lnet/sf/saxon/trans/FunctionStreamability;

.field public static final enum INSPECTION:Lnet/sf/saxon/trans/FunctionStreamability;

.field public static final enum SHALLOW_DESCENT:Lnet/sf/saxon/trans/FunctionStreamability;

.field public static final enum UNCLASSIFIED:Lnet/sf/saxon/trans/FunctionStreamability;


# instance fields
.field public streamabilityStr:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lnet/sf/saxon/trans/FunctionStreamability;

    const/4 v1, 0x0

    const-string v2, "unclassified"

    const-string v3, "UNCLASSIFIED"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/trans/FunctionStreamability;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/trans/FunctionStreamability;->UNCLASSIFIED:Lnet/sf/saxon/trans/FunctionStreamability;

    new-instance v1, Lnet/sf/saxon/trans/FunctionStreamability;

    const/4 v2, 0x1

    const-string v3, "absorbing"

    const-string v4, "ABSORBING"

    invoke-direct {v1, v4, v2, v3}, Lnet/sf/saxon/trans/FunctionStreamability;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/sf/saxon/trans/FunctionStreamability;->ABSORBING:Lnet/sf/saxon/trans/FunctionStreamability;

    new-instance v2, Lnet/sf/saxon/trans/FunctionStreamability;

    const/4 v3, 0x2

    const-string v4, "inspection"

    const-string v5, "INSPECTION"

    invoke-direct {v2, v5, v3, v4}, Lnet/sf/saxon/trans/FunctionStreamability;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lnet/sf/saxon/trans/FunctionStreamability;->INSPECTION:Lnet/sf/saxon/trans/FunctionStreamability;

    new-instance v3, Lnet/sf/saxon/trans/FunctionStreamability;

    const/4 v4, 0x3

    const-string v5, "filter"

    const-string v6, "FILTER"

    invoke-direct {v3, v6, v4, v5}, Lnet/sf/saxon/trans/FunctionStreamability;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lnet/sf/saxon/trans/FunctionStreamability;->FILTER:Lnet/sf/saxon/trans/FunctionStreamability;

    new-instance v4, Lnet/sf/saxon/trans/FunctionStreamability;

    const/4 v5, 0x4

    const-string v6, "shallow-descent"

    const-string v7, "SHALLOW_DESCENT"

    invoke-direct {v4, v7, v5, v6}, Lnet/sf/saxon/trans/FunctionStreamability;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lnet/sf/saxon/trans/FunctionStreamability;->SHALLOW_DESCENT:Lnet/sf/saxon/trans/FunctionStreamability;

    new-instance v5, Lnet/sf/saxon/trans/FunctionStreamability;

    const/4 v6, 0x5

    const-string v7, "deep-descent"

    const-string v8, "DEEP_DESCENT"

    invoke-direct {v5, v8, v6, v7}, Lnet/sf/saxon/trans/FunctionStreamability;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lnet/sf/saxon/trans/FunctionStreamability;->DEEP_DESCENT:Lnet/sf/saxon/trans/FunctionStreamability;

    new-instance v6, Lnet/sf/saxon/trans/FunctionStreamability;

    const/4 v7, 0x6

    const-string v8, "ascent"

    const-string v9, "ASCENT"

    invoke-direct {v6, v9, v7, v8}, Lnet/sf/saxon/trans/FunctionStreamability;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lnet/sf/saxon/trans/FunctionStreamability;->ASCENT:Lnet/sf/saxon/trans/FunctionStreamability;

    filled-new-array/range {v0 .. v6}, [Lnet/sf/saxon/trans/FunctionStreamability;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/trans/FunctionStreamability;->$VALUES:[Lnet/sf/saxon/trans/FunctionStreamability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/sf/saxon/trans/FunctionStreamability;->streamabilityStr:Ljava/lang/String;

    return-void
.end method

.method public static of(Ljava/lang/String;)Lnet/sf/saxon/trans/FunctionStreamability;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "absorbing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "unclassified"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "inspection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "shallow-descent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "filter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "ascent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "deep-descent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lnet/sf/saxon/trans/FunctionStreamability;->ABSORBING:Lnet/sf/saxon/trans/FunctionStreamability;

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/sf/saxon/trans/FunctionStreamability;->UNCLASSIFIED:Lnet/sf/saxon/trans/FunctionStreamability;

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/sf/saxon/trans/FunctionStreamability;->INSPECTION:Lnet/sf/saxon/trans/FunctionStreamability;

    return-object p0

    :pswitch_3
    sget-object p0, Lnet/sf/saxon/trans/FunctionStreamability;->SHALLOW_DESCENT:Lnet/sf/saxon/trans/FunctionStreamability;

    return-object p0

    :pswitch_4
    sget-object p0, Lnet/sf/saxon/trans/FunctionStreamability;->FILTER:Lnet/sf/saxon/trans/FunctionStreamability;

    return-object p0

    :pswitch_5
    sget-object p0, Lnet/sf/saxon/trans/FunctionStreamability;->ASCENT:Lnet/sf/saxon/trans/FunctionStreamability;

    return-object p0

    :pswitch_6
    sget-object p0, Lnet/sf/saxon/trans/FunctionStreamability;->DEEP_DESCENT:Lnet/sf/saxon/trans/FunctionStreamability;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x62161727 -> :sswitch_6
        -0x53f6d326 -> :sswitch_5
        -0x4bf73488 -> :sswitch_4
        0x5c58601 -> :sswitch_3
        0x686b0d74 -> :sswitch_2
        0x6dae7d6c -> :sswitch_1
        0x796c6395 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/trans/FunctionStreamability;
    .locals 1

    const-class v0, Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/FunctionStreamability;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/trans/FunctionStreamability;
    .locals 1

    sget-object v0, Lnet/sf/saxon/trans/FunctionStreamability;->$VALUES:[Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {v0}, [Lnet/sf/saxon/trans/FunctionStreamability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/trans/FunctionStreamability;

    return-object v0
.end method


# virtual methods
.method public isConsuming()Z
    .locals 1

    sget-object v0, Lnet/sf/saxon/trans/FunctionStreamability;->ABSORBING:Lnet/sf/saxon/trans/FunctionStreamability;

    if-eq p0, v0, :cond_1

    sget-object v0, Lnet/sf/saxon/trans/FunctionStreamability;->SHALLOW_DESCENT:Lnet/sf/saxon/trans/FunctionStreamability;

    if-eq p0, v0, :cond_1

    sget-object v0, Lnet/sf/saxon/trans/FunctionStreamability;->DEEP_DESCENT:Lnet/sf/saxon/trans/FunctionStreamability;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isStreaming()Z
    .locals 1

    sget-object v0, Lnet/sf/saxon/trans/FunctionStreamability;->UNCLASSIFIED:Lnet/sf/saxon/trans/FunctionStreamability;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
