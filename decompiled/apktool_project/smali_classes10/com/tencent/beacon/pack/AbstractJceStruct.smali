.class public abstract Lcom/tencent/beacon/pack/AbstractJceStruct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BYTE:B = 0x0t

.field public static final DOUBLE:B = 0x5t

.field public static final FLOAT:B = 0x4t

.field public static final INT:B = 0x2t

.field public static final JCE_MAX_STRING_LENGTH:I = 0x6400000

.field public static final LIST:B = 0x9t

.field public static final LONG:B = 0x3t

.field public static final MAP:B = 0x8t

.field public static final SHORT:B = 0x1t

.field public static final SIMPLE_LIST:B = 0xdt

.field public static final STRING1:B = 0x6t

.field public static final STRING4:B = 0x7t

.field public static final STRUCT_BEGIN:B = 0xat

.field public static final STRUCT_END:B = 0xbt

.field public static final ZERO_TAG:B = 0xct


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInit()Lcom/tencent/beacon/pack/AbstractJceStruct;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract readFrom(Lcom/tencent/beacon/pack/a;)V
.end method

.method public toByteArray()[B
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/beacon/pack/b;

    invoke-direct {v0}, Lcom/tencent/beacon/pack/b;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/beacon/pack/AbstractJceStruct;->writeTo(Lcom/tencent/beacon/pack/b;)V

    .line 3
    invoke-virtual {v0}, Lcom/tencent/beacon/pack/b;->b()[B

    move-result-object p0

    return-object p0
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 1

    .line 4
    new-instance v0, Lcom/tencent/beacon/pack/b;

    invoke-direct {v0}, Lcom/tencent/beacon/pack/b;-><init>()V

    .line 5
    iput-object p1, v0, Lcom/tencent/beacon/pack/b;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0}, Lcom/tencent/beacon/pack/AbstractJceStruct;->writeTo(Lcom/tencent/beacon/pack/b;)V

    .line 7
    invoke-virtual {v0}, Lcom/tencent/beacon/pack/b;->b()[B

    move-result-object p0

    return-object p0
.end method

.method public abstract writeTo(Lcom/tencent/beacon/pack/b;)V
.end method
