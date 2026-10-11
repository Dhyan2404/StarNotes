.class public Lcom/tencent/cos/xml/model/ci/media/TemplateSnapshot$TemplateSnapshotSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    name = "Snapshot"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/TemplateSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemplateSnapshotSnapshot"
.end annotation


# instance fields
.field public blackLevel:Ljava/lang/String;

.field public cIParam:Ljava/lang/String;

.field public count:Ljava/lang/String;

.field public height:Ljava/lang/String;

.field public isCheckBlack:Ljava/lang/String;

.field public isCheckCount:Ljava/lang/String;

.field public mode:Ljava/lang/String;

.field public pixelBlackThreshold:Ljava/lang/String;

.field public snapshotOutMode:Ljava/lang/String;

.field public spriteSnapshotConfig:Lcom/tencent/cos/xml/model/ci/media/TemplateSnapshot$TemplateSnapshotSpriteSnapshotConfig;

.field public start:Ljava/lang/String;

.field public timeInterval:Ljava/lang/String;

.field public width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
