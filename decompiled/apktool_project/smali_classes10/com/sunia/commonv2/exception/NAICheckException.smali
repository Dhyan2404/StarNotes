.class public Lcom/sunia/commonv2/exception/NAICheckException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/sunia/commonv2/exception/NAICheckException;->code:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/exception/NAICheckException;->code:I

    return p0
.end method
