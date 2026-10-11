.class public Lnet/sf/saxon/s9api/XsltExecutable$ParameterDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/s9api/XsltExecutable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterDetails"
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/s9api/Processor;

.field public final b:Lnet/sf/saxon/value/SequenceType;

.field public final c:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/value/SequenceType;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/XsltExecutable$ParameterDetails;->a:Lnet/sf/saxon/s9api/Processor;

    iput-object p2, p0, Lnet/sf/saxon/s9api/XsltExecutable$ParameterDetails;->b:Lnet/sf/saxon/value/SequenceType;

    iput-boolean p3, p0, Lnet/sf/saxon/s9api/XsltExecutable$ParameterDetails;->c:Z

    return-void
.end method


# virtual methods
.method public getDeclaredCardinality()Lnet/sf/saxon/s9api/OccurrenceIndicator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltExecutable$ParameterDetails;->b:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/OccurrenceIndicator;->getOccurrenceIndicator(I)Lnet/sf/saxon/s9api/OccurrenceIndicator;

    move-result-object p0

    return-object p0
.end method

.method public getDeclaredItemType()Lnet/sf/saxon/s9api/ItemType;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/gae;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XsltExecutable$ParameterDetails;->b:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltExecutable$ParameterDetails;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object v0
.end method

.method public getUnderlyingDeclaredType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltExecutable$ParameterDetails;->b:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public isRequired()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/s9api/XsltExecutable$ParameterDetails;->c:Z

    return p0
.end method
