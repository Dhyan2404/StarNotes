.class public Lcom/sunia/commonv2/exception/NAIException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static NEGATIVE6:Lcom/sunia/commonv2/exception/NAIException;

.field public static NEGATIVE7:Lcom/sunia/commonv2/exception/NAIException;

.field public static ONE:Lcom/sunia/commonv2/exception/NAIException;

.field public static ZERO:Lcom/sunia/commonv2/exception/NAIException;


# instance fields
.field private code:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/commonv2/exception/NAIException;

    const/4 v1, 0x0

    const-string v2, "The nai engine is not available."

    invoke-direct {v0, v1, v2}, Lcom/sunia/commonv2/exception/NAIException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/exception/NAIException;->ZERO:Lcom/sunia/commonv2/exception/NAIException;

    new-instance v0, Lcom/sunia/commonv2/exception/NAIException;

    const/4 v1, 0x1

    const-string v2, "Calls in the main thread are not supported"

    invoke-direct {v0, v1, v2}, Lcom/sunia/commonv2/exception/NAIException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/exception/NAIException;->ONE:Lcom/sunia/commonv2/exception/NAIException;

    new-instance v0, Lcom/sunia/commonv2/exception/NAIException;

    const/4 v1, -0x6

    const-string v2, "No handwriting was found for any of the characters."

    invoke-direct {v0, v1, v2}, Lcom/sunia/commonv2/exception/NAIException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/exception/NAIException;->NEGATIVE6:Lcom/sunia/commonv2/exception/NAIException;

    new-instance v0, Lcom/sunia/commonv2/exception/NAIException;

    const/4 v1, -0x7

    const-string v2, "Some of the characters did not find a corresponding handwriting"

    invoke-direct {v0, v1, v2}, Lcom/sunia/commonv2/exception/NAIException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/exception/NAIException;->NEGATIVE7:Lcom/sunia/commonv2/exception/NAIException;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/sunia/commonv2/exception/NAIException;->code:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/exception/NAIException;->code:I

    return p0
.end method
