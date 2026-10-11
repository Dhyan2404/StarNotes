.class public Lcom/sunia/commonv2/hwr/HWRMultiEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HWRMultiEngine"


# instance fields
.field private mEngine:Lcom/sunia/HTREnginev2/sdk/Engine;


# direct methods
.method public constructor <init>(Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/sunia/commonv2/hwr/HWRMultiEngine;->init(Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/sunia/commonv2/hwr/HWRMultiEngine;)Lcom/sunia/HTREnginev2/sdk/Engine;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRMultiEngine;->mEngine:Lcom/sunia/HTREnginev2/sdk/Engine;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/sunia/commonv2/hwr/HWRMultiEngine;Lcom/sunia/HTREnginev2/sdk/Engine;)Lcom/sunia/HTREnginev2/sdk/Engine;
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/hwr/HWRMultiEngine;->mEngine:Lcom/sunia/HTREnginev2/sdk/Engine;

    return-object p1
.end method

.method private init(Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V
    .locals 1

    new-instance v0, Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;-><init>(Lcom/sunia/commonv2/hwr/HWRMultiEngine;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    invoke-static {v0}, Lcom/sunia/commonv2/hwr/HWRHelper;->authorize(Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRMultiEngine;->mEngine:Lcom/sunia/HTREnginev2/sdk/Engine;

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/sunia/commonv2/hwr/HWRHelper;->release(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Lcom/sunia/HTREnginev2/sdk/Engine;)V

    return-void
.end method

.method public updateEditor(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Lcom/sunia/commonv2/bean/ConfigBean;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sunia/commonv2/hwr/HWRHelper;->updateEditor(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Lcom/sunia/commonv2/bean/ConfigBean;)Z

    return-void
.end method
