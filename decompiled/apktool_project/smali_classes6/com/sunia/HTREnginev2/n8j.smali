.class public final Lcom/sunia/HTREnginev2/n8j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/sunia/HTREnginev2/htd;
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/q;

.field public static final b:Lcom/google/protobuf/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sunia/HTREnginev2/n8j;->c()Lcom/google/protobuf/q;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/n8j;->a:Lcom/google/protobuf/q;

    new-instance v0, Lcom/google/protobuf/s;

    invoke-direct {v0}, Lcom/google/protobuf/s;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/n8j;->b:Lcom/google/protobuf/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/protobuf/q;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/n8j;->a:Lcom/google/protobuf/q;

    return-object v0
.end method

.method public static b()Lcom/google/protobuf/q;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/n8j;->b:Lcom/google/protobuf/q;

    return-object v0
.end method

.method public static c()Lcom/google/protobuf/q;
    .locals 3

    :try_start_0
    const-class v0, Lcom/google/protobuf/r;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/q;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
