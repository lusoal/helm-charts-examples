{{- define "python-application-chart.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
{{- if .Values.serviceAccount.name -}}
{{ .Values.serviceAccount.name }}
{{- else -}}
{{ include "python-application-chart.fullname" . }}
{{- end -}}
{{- else -}}
default
{{- end -}}
{{- end -}}

{{- define "python-application-chart.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}
