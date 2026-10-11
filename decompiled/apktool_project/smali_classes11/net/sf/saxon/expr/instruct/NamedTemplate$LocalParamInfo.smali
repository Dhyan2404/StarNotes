.class public Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/instruct/NamedTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalParamInfo"
.end annotation


# instance fields
.field public isRequired:Z

.field public isTunnel:Z

.field public name:Lnet/sf/saxon/om/StructuredQName;

.field public requiredType:Lnet/sf/saxon/value/SequenceType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
