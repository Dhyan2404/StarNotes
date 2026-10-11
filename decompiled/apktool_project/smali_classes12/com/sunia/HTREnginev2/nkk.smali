.class public final synthetic Lcom/sunia/HTREnginev2/nkk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hslf/record/RecordTypes;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hslf/record/RecordTypes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nkk;->e:Lorg/apache/poi/hslf/record/RecordTypes;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nkk;->e:Lorg/apache/poi/hslf/record/RecordTypes;

    check-cast p1, Lorg/apache/poi/hslf/record/Record;

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/record/PPDrawing;->c(Lorg/apache/poi/hslf/record/RecordTypes;Lorg/apache/poi/hslf/record/Record;)Z

    move-result p0

    return p0
.end method
