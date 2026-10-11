.class public Lcom/sunia/calculatorv2/ink/editor/EditorException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field public static final CODE_LOW_CONFIDENCE_DETECTED:I


# instance fields
.field private final code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/sunia/calculatorv2/ink/editor/EditorException;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iput p1, p0, Lcom/sunia/calculatorv2/ink/editor/EditorException;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 4
    iput p1, p0, Lcom/sunia/calculatorv2/ink/editor/EditorException;->code:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/sunia/calculatorv2/ink/editor/EditorException;->code:I

    return p0
.end method
