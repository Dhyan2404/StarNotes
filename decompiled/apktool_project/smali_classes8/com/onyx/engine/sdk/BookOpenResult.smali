.class public Lcom/onyx/engine/sdk/BookOpenResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bookSize:I

.field private err:Lcom/onyx/engine/sdk/HandleErrorCode;

.field private handle:J

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/onyx/engine/sdk/HandleErrorCode;->UNKNOWN:Lcom/onyx/engine/sdk/HandleErrorCode;

    iput-object v0, p0, Lcom/onyx/engine/sdk/BookOpenResult;->err:Lcom/onyx/engine/sdk/HandleErrorCode;

    return-void
.end method

.method public constructor <init>(JIILjava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/onyx/engine/sdk/HandleErrorCode;->UNKNOWN:Lcom/onyx/engine/sdk/HandleErrorCode;

    iput-object v0, p0, Lcom/onyx/engine/sdk/BookOpenResult;->err:Lcom/onyx/engine/sdk/HandleErrorCode;

    .line 5
    iput-wide p1, p0, Lcom/onyx/engine/sdk/BookOpenResult;->handle:J

    .line 6
    iput p3, p0, Lcom/onyx/engine/sdk/BookOpenResult;->bookSize:I

    .line 7
    invoke-static {p4}, Lcom/onyx/engine/sdk/HandleErrorCode;->valueOf(I)Lcom/onyx/engine/sdk/HandleErrorCode;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/BookOpenResult;->err:Lcom/onyx/engine/sdk/HandleErrorCode;

    .line 8
    iput-object p5, p0, Lcom/onyx/engine/sdk/BookOpenResult;->message:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/BookOpenResult;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/et;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/et;-><init>()V

    const-class v1, Lcom/onyx/engine/sdk/BookOpenResult;

    invoke-static {p0, v1, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/BookOpenResult;

    return-object p0
.end method


# virtual methods
.method public getBookSize()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/BookOpenResult;->bookSize:I

    return p0
.end method

.method public getErr()Lcom/onyx/engine/sdk/HandleErrorCode;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/BookOpenResult;->err:Lcom/onyx/engine/sdk/HandleErrorCode;

    return-object p0
.end method

.method public getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/BookOpenResult;->handle:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/BookOpenResult;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setBookSize(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/BookOpenResult;->bookSize:I

    return-void
.end method

.method public setErr(Lcom/onyx/engine/sdk/HandleErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/BookOpenResult;->err:Lcom/onyx/engine/sdk/HandleErrorCode;

    return-void
.end method

.method public setHandle(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/engine/sdk/BookOpenResult;->handle:J

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/BookOpenResult;->message:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookOpenResult{handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onyx/engine/sdk/BookOpenResult;->handle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bookSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/BookOpenResult;->bookSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/BookOpenResult;->err:Lcom/onyx/engine/sdk/HandleErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/engine/sdk/BookOpenResult;->message:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
