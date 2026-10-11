package com.google.api.client.googleapis.batch;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpHeaders;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestFactory;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.MultipartContent;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Sleeper;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.poi.smtp.MIMEHeaders;
import org.mortbay.util.MultiPartWriter;

/* loaded from: classes6.dex */
public final class BatchRequest {
    private static final String GLOBAL_BATCH_ENDPOINT = "https://www.googleapis.com/batch";
    private static final String GLOBAL_BATCH_ENDPOINT_WARNING = "You are using the global batch endpoint which will soon be shut down. Please instantiate your BatchRequest via your service client's `batch(HttpRequestInitializer)` method. For an example, please see https://github.com/googleapis/google-api-java-client#batching.";
    private static final Logger LOGGER = Logger.getLogger(BatchRequest.class.getName());
    private final HttpRequestFactory requestFactory;
    private GenericUrl batchUrl = new GenericUrl(GLOBAL_BATCH_ENDPOINT);
    List<RequestInfo<?, ?>> requestInfos = new ArrayList();
    private Sleeper sleeper = Sleeper.DEFAULT;

    /* loaded from: classes6.dex */
    public class BatchInterceptor implements HttpExecuteInterceptor {
        private HttpExecuteInterceptor originalInterceptor;

        public BatchInterceptor(HttpExecuteInterceptor httpExecuteInterceptor) {
            this.originalInterceptor = httpExecuteInterceptor;
        }

        @Override // com.google.api.client.http.HttpExecuteInterceptor
        public void intercept(HttpRequest httpRequest) throws IOException {
            HttpExecuteInterceptor httpExecuteInterceptor = this.originalInterceptor;
            if (httpExecuteInterceptor != null) {
                httpExecuteInterceptor.intercept(httpRequest);
            }
            for (RequestInfo<?, ?> requestInfo : BatchRequest.this.requestInfos) {
                HttpExecuteInterceptor interceptor = requestInfo.request.getInterceptor();
                if (interceptor != null) {
                    interceptor.intercept(requestInfo.request);
                }
            }
        }
    }

    /* loaded from: classes6.dex */
    public static class RequestInfo<T, E> {
        final BatchCallback<T, E> callback;
        final Class<T> dataClass;
        final Class<E> errorClass;
        final HttpRequest request;

        public RequestInfo(BatchCallback<T, E> batchCallback, Class<T> cls, Class<E> cls2, HttpRequest httpRequest) {
            this.callback = batchCallback;
            this.dataClass = cls;
            this.errorClass = cls2;
            this.request = httpRequest;
        }
    }

    @Deprecated
    public BatchRequest(HttpTransport httpTransport, HttpRequestInitializer httpRequestInitializer) {
        this.requestFactory = httpRequestInitializer == null ? httpTransport.createRequestFactory() : httpTransport.createRequestFactory(httpRequestInitializer);
    }

    public void execute() throws IOException {
        boolean z;
        Preconditions.checkState(!this.requestInfos.isEmpty());
        if (GLOBAL_BATCH_ENDPOINT.equals(this.batchUrl.toString())) {
            LOGGER.log(Level.WARNING, GLOBAL_BATCH_ENDPOINT_WARNING);
        }
        HttpRequest buildPostRequest = this.requestFactory.buildPostRequest(this.batchUrl, null);
        buildPostRequest.setInterceptor(new BatchInterceptor(buildPostRequest.getInterceptor()));
        int numberOfRetries = buildPostRequest.getNumberOfRetries();
        do {
            z = numberOfRetries > 0;
            MultipartContent multipartContent = new MultipartContent();
            multipartContent.getMediaType().setSubType("mixed");
            Iterator<RequestInfo<?, ?>> it2 = this.requestInfos.iterator();
            int i = 1;
            while (it2.hasNext()) {
                multipartContent.addPart(new MultipartContent.Part(new HttpHeaders().setAcceptEncoding(null).set(MIMEHeaders.KEY_CONTENT_ID, (Object) Integer.valueOf(i)), new HttpRequestContent(it2.next().request)));
                i++;
            }
            buildPostRequest.setContent(multipartContent);
            HttpResponse execute = buildPostRequest.execute();
            try {
                BatchUnparsedResponse batchUnparsedResponse = new BatchUnparsedResponse(new BufferedInputStream(execute.getContent()), MultiPartWriter.f115320h + execute.getMediaType().getParameter(MIMEHeaders.KEY_BOUNDARY), this.requestInfos, z);
                while (batchUnparsedResponse.hasNext) {
                    batchUnparsedResponse.parseNextResponse();
                }
                execute.disconnect();
                List<RequestInfo<?, ?>> list = batchUnparsedResponse.unsuccessfulRequestInfos;
                if (list.isEmpty()) {
                    break;
                }
                this.requestInfos = list;
                numberOfRetries--;
            } catch (Throwable th) {
                execute.disconnect();
                throw th;
            }
        } while (z);
        this.requestInfos.clear();
    }

    public GenericUrl getBatchUrl() {
        return this.batchUrl;
    }

    public Sleeper getSleeper() {
        return this.sleeper;
    }

    public <T, E> BatchRequest queue(HttpRequest httpRequest, Class<T> cls, Class<E> cls2, BatchCallback<T, E> batchCallback) throws IOException {
        Preconditions.checkNotNull(httpRequest);
        Preconditions.checkNotNull(batchCallback);
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(cls2);
        this.requestInfos.add(new RequestInfo<>(batchCallback, cls, cls2, httpRequest));
        return this;
    }

    public BatchRequest setBatchUrl(GenericUrl genericUrl) {
        this.batchUrl = genericUrl;
        return this;
    }

    public BatchRequest setSleeper(Sleeper sleeper) {
        this.sleeper = (Sleeper) Preconditions.checkNotNull(sleeper);
        return this;
    }

    public int size() {
        return this.requestInfos.size();
    }
}
