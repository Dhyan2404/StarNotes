.class public Lcom/tencent/cos/xml/model/tag/DomainConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/DomainConfiguration$DomainRule;
    }
.end annotation


# static fields
.field public static final REPLACE_CNAME:Ljava/lang/String; = "CNAME"

.field public static final REPLACE_TXT:Ljava/lang/String; = "TXT"

.field public static final STATUS_DISABLED:Ljava/lang/String; = "DISABLED"

.field public static final STATUS_ENABLED:Ljava/lang/String; = "ENABLED"

.field public static final TYPE_REST:Ljava/lang/String; = "REST"

.field public static final TYPE_WEBSITE:Ljava/lang/String; = "WEBSITE"


# instance fields
.field public domainRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/DomainConfiguration$DomainRule;",
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
