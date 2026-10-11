.class Lcom/sunia/graphv2/local/LocalGraphListenerImpl$a;
.super Lcom/google/gson/reflect/TypeToken;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->onGraphResultCallback(JILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/sunia/commonv2/bean/graph/GraphBaseResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/sunia/graphv2/local/LocalGraphListenerImpl;


# direct methods
.method public constructor <init>(Lcom/sunia/graphv2/local/LocalGraphListenerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl$a;->a:Lcom/sunia/graphv2/local/LocalGraphListenerImpl;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
