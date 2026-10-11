.class public final synthetic Lcom/sunia/HTREnginev2/i6h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractor;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extract(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractorFactory;->a(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
