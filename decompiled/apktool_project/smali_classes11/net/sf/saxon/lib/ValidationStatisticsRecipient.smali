.class public interface abstract Lnet/sf/saxon/lib/ValidationStatisticsRecipient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract notifyValidationStatistics(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/type/SchemaComponent;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method
