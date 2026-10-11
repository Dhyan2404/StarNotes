.class public Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;
.super Lcom/sun/org/apache/bcel/internal/generic/Type;
.source "SourceFile"


# static fields
.field public static final NO_TARGET:Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;


# instance fields
.field private returnTarget:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;

    invoke-direct {v0}, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;-><init>()V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;->NO_TARGET:Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const-string v1, "<return address>"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/Type;-><init>(BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<return address targeting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;-><init>(BLjava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;->returnTarget:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;

    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;->returnTarget:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;->returnTarget:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;->returnTarget:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method
