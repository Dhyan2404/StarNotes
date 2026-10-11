package com.dropbox.core.json;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonProcessingException;
import java.io.File;

/* loaded from: classes4.dex */
public final class JsonReadException extends Exception {
    public static final long serialVersionUID = 0;
    public final String error;
    public final JsonLocation location;
    private PathPart path;

    /* loaded from: classes4.dex */
    public static final class PathPart {
        public final String description;
        public final PathPart next;

        public PathPart(String str, PathPart pathPart) {
            this.description = str;
            this.next = pathPart;
        }
    }

    public JsonReadException(String str, JsonLocation jsonLocation) {
        this.error = str;
        this.location = jsonLocation;
        this.path = null;
    }

    public static JsonReadException fromJackson(JsonProcessingException jsonProcessingException) {
        String message = jsonProcessingException.getMessage();
        int lastIndexOf = message.lastIndexOf(" at [Source");
        if (lastIndexOf >= 0) {
            message = message.substring(0, lastIndexOf);
        }
        return new JsonReadException(message, jsonProcessingException.getLocation());
    }

    public static void toStringLocation(StringBuilder sb, JsonLocation jsonLocation) {
        Object sourceRef = jsonLocation.getSourceRef();
        if (sourceRef instanceof File) {
            sb.append(((File) sourceRef).getPath());
            sb.append(": ");
        }
        sb.append(jsonLocation.getLineNr());
        sb.append(".");
        sb.append(jsonLocation.getColumnNr());
    }

    public JsonReadException addArrayContext(int i) {
        this.path = new PathPart(Integer.toString(i), this.path);
        return this;
    }

    public JsonReadException addFieldContext(String str) {
        this.path = new PathPart('\"' + str + '\"', this.path);
        return this;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuilder sb = new StringBuilder();
        toStringLocation(sb, this.location);
        sb.append(": ");
        PathPart pathPart = this.path;
        if (pathPart != null) {
            sb.append(pathPart.description);
            while (true) {
                pathPart = pathPart.next;
                if (pathPart == null) {
                    break;
                }
                sb.append(".");
                sb.append(pathPart.description);
            }
            sb.append(": ");
        }
        sb.append(this.error);
        return sb.toString();
    }

    public JsonReadException(String str, JsonLocation jsonLocation, Throwable th) {
        super(th);
        this.error = str;
        this.location = jsonLocation;
        this.path = null;
    }
}
