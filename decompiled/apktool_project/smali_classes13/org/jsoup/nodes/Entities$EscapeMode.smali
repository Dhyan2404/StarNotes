.class public final enum Lorg/jsoup/nodes/Entities$EscapeMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EscapeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/nodes/Entities$EscapeMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum base:Lorg/jsoup/nodes/Entities$EscapeMode;

.field private static final synthetic e:[Lorg/jsoup/nodes/Entities$EscapeMode;

.field public static final enum extended:Lorg/jsoup/nodes/Entities$EscapeMode;

.field public static final enum user:Lorg/jsoup/nodes/Entities$EscapeMode;

.field public static final enum xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[I

.field private c:[I

.field private d:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/jsoup/nodes/Entities$EscapeMode;

    sget-object v1, Lcom/sunia/HTREnginev2/syo;->a:Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "xhtml"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/jsoup/nodes/Entities$EscapeMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    new-instance v1, Lorg/jsoup/nodes/Entities$EscapeMode;

    sget-object v2, Lcom/sunia/HTREnginev2/syo;->b:Ljava/lang/String;

    const/16 v3, 0x6a

    const-string v4, "base"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/jsoup/nodes/Entities$EscapeMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    new-instance v2, Lorg/jsoup/nodes/Entities$EscapeMode;

    sget-object v3, Lcom/sunia/HTREnginev2/syo;->c:Ljava/lang/String;

    const/16 v4, 0x84d

    const-string v5, "extended"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/jsoup/nodes/Entities$EscapeMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    new-instance v3, Lorg/jsoup/nodes/Entities$EscapeMode;

    sget-object v4, Lcom/sunia/HTREnginev2/syo;->d:Ljava/lang/String;

    const/4 v5, 0x5

    const-string v6, "user"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lorg/jsoup/nodes/Entities$EscapeMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lorg/jsoup/nodes/Entities$EscapeMode;->user:Lorg/jsoup/nodes/Entities$EscapeMode;

    filled-new-array {v0, v1, v2, v3}, [Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->e:[Lorg/jsoup/nodes/Entities$EscapeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, p3, p4}, Lorg/jsoup/nodes/Entities;->d(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V

    return-void
.end method

.method private a()I
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->a:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public static synthetic access$100(Lorg/jsoup/nodes/Entities$EscapeMode;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->a:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lorg/jsoup/nodes/Entities$EscapeMode;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->a:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$200(Lorg/jsoup/nodes/Entities$EscapeMode;)[I
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->b:[I

    return-object p0
.end method

.method public static synthetic access$202(Lorg/jsoup/nodes/Entities$EscapeMode;[I)[I
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->b:[I

    return-object p1
.end method

.method public static synthetic access$300(Lorg/jsoup/nodes/Entities$EscapeMode;)[I
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->c:[I

    return-object p0
.end method

.method public static synthetic access$302(Lorg/jsoup/nodes/Entities$EscapeMode;[I)[I
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->c:[I

    return-object p1
.end method

.method public static synthetic access$400(Lorg/jsoup/nodes/Entities$EscapeMode;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->d:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$402(Lorg/jsoup/nodes/Entities$EscapeMode;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->d:[Ljava/lang/String;

    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$EscapeMode;
    .locals 1

    const-class v0, Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object p0
.end method

.method public static values()[Lorg/jsoup/nodes/Entities$EscapeMode;
    .locals 1

    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->e:[Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0}, [Lorg/jsoup/nodes/Entities$EscapeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object v0
.end method


# virtual methods
.method public codepointForName(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->a:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->b:[I

    aget p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public nameForCodepoint(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->c:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->d:[Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    iget-object p0, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->c:[I

    add-int/lit8 v2, v0, 0x1

    aget p0, p0, v2

    if-ne p0, p1, :cond_0

    aget-object p0, v1, v2

    goto :goto_0

    :cond_0
    aget-object p0, v1, v0

    :goto_0
    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method
