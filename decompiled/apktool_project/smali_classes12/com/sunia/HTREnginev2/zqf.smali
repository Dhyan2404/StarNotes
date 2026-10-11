.class public final Lcom/sunia/HTREnginev2/zqf;
.super Lcom/sunia/HTREnginev2/x4;
.source "SourceFile"


# static fields
.field public static final a:Lcom/sunia/HTREnginev2/zqf;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/zqf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/zqf;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/zqf;->a:Lcom/sunia/HTREnginev2/zqf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/x4;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
