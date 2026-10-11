.class public final Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Creator_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector$Creator;


# annotations
.annotation build Ldagger/internal/DaggerGenerated;
.end annotation


# instance fields
.field public final a:Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Factory;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Creator_Impl;->a:Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Factory;

    return-void
.end method

.method public static create(Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Factory;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Factory;",
            ")",
            "Ljavax/inject/Provider<",
            "Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector$Creator;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Creator_Impl;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Creator_Impl;-><init>(Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Factory;)V

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p0

    return-object p0
.end method

.method public static createFactoryProvider(Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Factory;)Ldagger/internal/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Factory;",
            ")",
            "Ldagger/internal/Provider<",
            "Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector$Creator;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Creator_Impl;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Creator_Impl;-><init>(Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Factory;)V

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Creator_Impl;->a:Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Factory;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector_Factory;->get(Ljava/lang/String;)Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector;

    move-result-object p0

    return-object p0
.end method
