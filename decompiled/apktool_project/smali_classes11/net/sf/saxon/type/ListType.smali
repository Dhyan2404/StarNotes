.class public interface abstract Lnet/sf/saxon/type/ListType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/SimpleType;
.implements Lnet/sf/saxon/type/CastingTarget;


# virtual methods
.method public abstract getItemType()Lnet/sf/saxon/type/SimpleType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/MissingComponentException;
        }
    .end annotation
.end method
