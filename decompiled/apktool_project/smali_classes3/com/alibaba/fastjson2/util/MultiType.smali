.class public final Lcom/alibaba/fastjson2/util/MultiType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/Type;


# instance fields
.field public final e:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/MultiType;->e:[Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public getType(I)Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/util/MultiType;->e:[Ljava/lang/reflect/Type;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/util/MultiType;->e:[Ljava/lang/reflect/Type;

    array-length p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/util/MultiType;->e:[Ljava/lang/reflect/Type;

    invoke-static {p0}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
