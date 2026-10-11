.class public final Lcom/sun/org/apache/bcel/internal/verifier/statics/DOUBLE_Upper;
.super Lcom/sun/org/apache/bcel/internal/generic/Type;
.source "SourceFile"


# static fields
.field private static singleInstance:Lcom/sun/org/apache/bcel/internal/verifier/statics/DOUBLE_Upper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/DOUBLE_Upper;

    invoke-direct {v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/DOUBLE_Upper;-><init>()V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/DOUBLE_Upper;->singleInstance:Lcom/sun/org/apache/bcel/internal/verifier/statics/DOUBLE_Upper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/16 v0, 0xf

    const-string v1, "Long_Upper"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/Type;-><init>(BLjava/lang/String;)V

    return-void
.end method

.method public static theInstance()Lcom/sun/org/apache/bcel/internal/verifier/statics/DOUBLE_Upper;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/DOUBLE_Upper;->singleInstance:Lcom/sun/org/apache/bcel/internal/verifier/statics/DOUBLE_Upper;

    return-object v0
.end method
