.class public Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;",
        "Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    return-void
.end method

.method public static synthetic g(Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream$Builder;)Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream$Builder;->h()Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;

    move-result-object p0

    return-object p0
.end method

.method private synthetic h()Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;-><init>(Ljava/io/InputStream;Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream$a;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream$Builder;->get()Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/vqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream$Builder;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->get(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;

    return-object p0
.end method
