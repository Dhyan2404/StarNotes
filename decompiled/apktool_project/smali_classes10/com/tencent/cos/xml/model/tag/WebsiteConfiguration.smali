.class public Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$Redirect;,
        Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$Contidion;,
        Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$RoutingRule;,
        Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$RedirectAllRequestTo;,
        Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$ErrorDocument;,
        Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$IndexDocument;
    }
.end annotation


# instance fields
.field public errorDocument:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$ErrorDocument;

.field public indexDocument:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$IndexDocument;

.field public redirectAllRequestTo:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$RedirectAllRequestTo;

.field public routingRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$RoutingRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
