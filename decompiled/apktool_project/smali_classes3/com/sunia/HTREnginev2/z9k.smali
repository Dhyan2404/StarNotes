.class public Lcom/sunia/HTREnginev2/z9k;
.super Lcom/sunia/HTREnginev2/bak;
.source "SourceFile"


# static fields
.field public static final a:Lcom/sunia/HTREnginev2/z9k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/z9k;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/z9k;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/z9k;->a:Lcom/sunia/HTREnginev2/z9k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/bak;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readUUID()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readUUID()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method
